import itertools

from coinor.cuppy.milpInstance import MILPInstance
import numpy as np
import os
import pandas as pd
import sys
import time

from simple_mip_solver import BranchAndBound, PseudoCostBranchNode,\
    DisjunctiveCutBoundPseudoCostBranchNode as DCBPCBNode
from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP
from simple_mip_solver.algorithms.branch_and_bound import ProfiledBranchAndBoundWarm, \
    ProfiledBranchAndBoundCold


def run_one_test(i, file, in_fldr, mip_gap, cut_off, out_file, gomory_cuts):
    # reset input types if needed
    i = int(i)
    mip_gap = float(mip_gap)
    cut_off = int(cut_off)
    assert isinstance(gomory_cuts, str)
    # if the cold model uses GMICs - warm model never uses GMIC's as their usefulness is mixed
    gomory_cuts = gomory_cuts == 'True'
    max_run_time = 900  # seconds, so 15 mins

    # if i != 9:
    #     return

    # build out data structures
    warm_bb = {}
    data = {}
    pth = os.path.join(in_fldr, file)
    model = MILPInstance(file_name=pth)
    # cold started branch and bound
    cold_bb = ProfiledBranchAndBoundCold(
        model, PseudoCostBranchNode, pseudo_costs={}, mip_gap=mip_gap,
        gomory_cuts=gomory_cuts, max_run_time=max_run_time
    )

    # solve cold start branch and bound to the current cut off
    cold_bb.node_limit = cut_off
    cold_bb.solve()
    os.rename("post_cutoff_solve_cold.prof", "pre_cutoff_solve_cold.prof")

    # generate cglp for warm started instances
    cglp = CutGeneratingLP(bb=cold_bb, root_id=0)

    for cglp_constraints, cglp_bounds in itertools.product(['cumulative', 'fixed'], ['cumulative', 'fixed']):
        if cglp_constraints != 'cumulative' or cglp_bounds != 'cumulative':
            continue
        # set the key (k) so as we add more pks the code stays readable
        k = (cut_off, cglp_constraints, cglp_bounds)
        print(k)
        # if k != (16, 'cumulative', 'fixed'):
        #     continue

        # warm start branch and bound with disjunctive cut after <c> nodes
        # reinstantiate to avoid cuts sticking to underlying LP when recycling
        warm_model = MILPInstance(
            A=cold_bb.root_node.lp.coefMatrix.toarray(),
            b=cold_bb.root_node.lp.constraintsLower.copy(),
            c=cold_bb.root_node.lp.objective,
            l=cold_bb.root_node.lp.variablesLower.copy(),
            u=cold_bb.root_node.lp.variablesUpper.copy(), sense=['Min', '>='],
            integerIndices=cold_bb.root_node._integer_indices,
            numVars=cold_bb.root_node.lp.nVariables
        )

        # get data to compare starts and progress after <c> node evaluations
        # for both warm and cold starts
        # don't put down the cglp init time in the first node so it doesn't get
        # stuck in the kwargs dict
        warm_bb[k] = ProfiledBranchAndBoundWarm(
            warm_model, DCBPCBNode, node_limit=cut_off, pseudo_costs={},
            mip_gap=mip_gap, gomory_cuts=False, cglp=cglp,
            cglp_cumulative_constraints=cglp_constraints == 'cumulative',
            cglp_cumulative_bounds=cglp_bounds == 'cumulative', max_term=1e16,
            max_cut_generation_iterations=float('inf'), cutting_plane_progress_tolerance=1e-8,
            force_create_cglp=True, max_run_time=max_run_time
        )
        warm_bb[k].solve()
        os.rename("post_cutoff_solve_warm.prof", "pre_cutoff_solve_warm.prof")
        # get data on warm start up to cut off - primal doesn't always exist at this point
        data[k] = {
            'variables': cold_bb.root_node.lp.nVariables,
            'constraints': cold_bb.root_node.lp.nConstraints,
            'elements': np.sum(cold_bb.root_node.lp.coefMatrix.toarray() != 0),
            'gomory_cuts': gomory_cuts,
            'cold initial dual bound': cold_bb.root_node.objective_value,
            'warm initial dual bound': warm_bb[k].root_node.objective_value,
            'cold cut off dual bound': cold_bb.dual_bound,
            'warm cut off dual bound': warm_bb[k].dual_bound,
            'cut off time': cold_bb.solve_time
        }

        # get data on warm start termination
        warm_bb[k].node_limit = float('inf')
        warm_bb[k].solve()
        data[k]['warm evaluated nodes'] = warm_bb[k].evaluated_nodes
        data[k]['warm solve time'] = warm_bb[k].solve_time
        data[k]['total restart solve time'] = data[k]['cut off time'] + \
                                              cglp.init_time + warm_bb[k].solve_time
        data[k]['total restart evaluated nodes'] = cold_bb.evaluated_nodes + \
                                                   warm_bb[k].evaluated_nodes
        # dual gap - update all these for that
        data[k]['warm initial gap'] = \
            abs(warm_bb[k].objective_value - data[k]['warm initial dual bound']) / \
            abs(warm_bb[k].objective_value)
        data[k]['warm cut off gap'] = \
            abs(warm_bb[k].objective_value - data[k]['warm cut off dual bound']) / \
            abs(warm_bb[k].objective_value)
        data[k]['warm objective value'] = warm_bb[k].objective_value
        # todo: update these
        data[k]['failed cglps'] = len([
            n for n in warm_bb[k].tree.get_node_instances(warm_bb[k].tree.nodes)
            if n.lp_feasible and not n.mip_feasible and (False if not n.cglp else n.cglp.cylp_failure)
        ])
        data[k]['null cglps'] = len([
            n for n in warm_bb[k].tree.get_node_instances(warm_bb[k].tree.nodes)
            if n.lp_feasible and not n.mip_feasible and not n.current_node_added_cglp
        ])
        data[k]['run cglps'] = sum(n.number_cglp_created for n in
                                   warm_bb[k].tree.get_node_instances(warm_bb[k].tree.nodes))
        data[k]['cut generation time'] = warm_bb[k].cut_generation_time
        data[k]['cglp init time'] = cglp.init_time + warm_bb[k].cglp_init_time
        data[k]['stopped on time'] = warm_bb[k].status == 'stopped on iterations or time'

    # get data on cold start termination
    cold_bb.node_limit = float('inf')
    cold_bb.solve()
    for k in data:
        # assert cold_bb.dual_bound <= warm_bb[k].primal_bound + .01 and \
        #        cold_bb.primal_bound + .01 >= warm_bb[k].dual_bound, \
        #        'gaps should overlap'
        data[k]['cold initial gap'] = \
            abs(cold_bb.objective_value - data[k]['cold initial dual bound']) / \
            abs(cold_bb.objective_value)
        data[k]['cold cut off gap'] = \
            abs(cold_bb.objective_value - data[k]['cold cut off dual bound']) / \
            abs(cold_bb.objective_value)
        data[k]['cold evaluated nodes'] = cold_bb.evaluated_nodes
        data[k]['cold solve time'] = cold_bb.solve_time
        data[k]['cold objective value'] = cold_bb.objective_value
        data[k]['initial gap improvement ratio'] = \
            (data[k]['cold initial gap'] - data[k]['warm initial gap']) / \
            data[k]['cold initial gap']
        data[k]['cut off gap improvement ratio'] = \
            (data[k]['cold cut off gap'] - data[k]['warm cut off gap']) / \
            data[k]['cold cut off gap']
        data[k]['warm evaluated nodes ratio'] = \
            (data[k]['cold evaluated nodes'] - data[k]['warm evaluated nodes']) / \
            data[k]['cold evaluated nodes']
        data[k]['warm solve time ratio'] = \
            (data[k]['cold solve time'] - data[k]['warm solve time']) / \
            data[k]['cold solve time']
        data[k]['total restart evaluated nodes ratio'] = \
            (data[k]['cold evaluated nodes'] - data[k]['total restart evaluated nodes']) / \
            data[k]['cold evaluated nodes']
        data[k]['total restart solve time ratio'] = \
            (data[k]['cold solve time'] - data[k]['total restart solve time']) / \
            data[k]['cold solve time']
        data[k]['solution gaps overlap'] = cold_bb.dual_bound <= warm_bb[k].primal_bound + .01 \
            and cold_bb.primal_bound + .01 >= warm_bb[k].dual_bound

    # append this test to our file
    df = pd.DataFrame.from_dict(data, orient='index')
    df.index.names = ['cut off', 'cglp_constraints', 'cglp_bounds']
    df.reset_index(inplace=True)
    df['test number'] = [i] * len(data)

    # rearrange columns
    cols = [
        # test differentiators (cuts/bounds are cumulative or fixed)
        'test number', 'cut off', 'cglp_constraints', 'cglp_bounds', 'gomory_cuts',

        # dual gap comparison after initial (root) node solved
        'initial gap improvement ratio', 'cut off gap improvement ratio',
        'warm evaluated nodes ratio', 'total restart evaluated nodes ratio',
        'warm solve time ratio', 'total restart solve time ratio',

        # dual gap comparison after <cut off> nodes solved
        'cold objective value', 'cold initial dual bound', 'cold initial gap',
        'cold cut off dual bound', 'cold cut off gap',
        'warm objective value', 'warm initial dual bound', 'warm initial gap',
        'warm cut off dual bound', 'warm cut off gap',

        # node evaluation comparison at <mip_gap> mip_gap
        'cold evaluated nodes', 'warm evaluated nodes', 'total restart evaluated nodes',

        # run time comparison at <mip_gap> mip_gap
        'cold solve time', 'cut off time', 'cglp init time', 'warm solve time',
        'total restart solve time', 'cut generation time',

        # checks on reliability and application of cglps
        'failed cglps', 'null cglps', 'run cglps', 'solution gaps overlap',
        'stopped on time'
    ]
    df = df[cols]
    with open(out_file, 'a') as f:
        df.to_csv(f, mode='a', header=f.tell() == 0, index=False)


if __name__ == '__main__':
    run_one_test(*sys.argv[1:])