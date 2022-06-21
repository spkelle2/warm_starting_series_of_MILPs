from coinor.cuppy.milpInstance import MILPInstance
import numpy as np
import os
import pandas as pd
import sys

from simple_mip_solver import BranchAndBound, PseudoCostBranchNode,\
    DisjunctiveCutBoundPseudoCostBranchNode as DCBPCBNode
from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP


def run_one_test(i, file, in_fldr, mip_gap, out_file_base, gomory_cuts, max_disjunction):
    # reset input types if needed
    i = int(i)
    mip_gap = float(mip_gap)
    assert gomory_cuts in ['True', 'False']
    gomory_cuts = gomory_cuts == 'True'
    max_disjunction = int(max_disjunction)

    # build out data structures
    dbr_meta, dbr, dbr_iter = {}, {}, {}  # dual bound recovery
    model = MILPInstance(file_name=os.path.join(in_fldr, file))
    bb = BranchAndBound(model, PseudoCostBranchNode, pseudo_costs={},
                        mip_gap=mip_gap, gomory_cuts=gomory_cuts)
    vars = bb.root_node.lp.nVariables
    constrs = bb.root_node.lp.nConstraints
    density = np.sum(bb.root_node.lp.coefMatrix.toarray() != 0)/(vars*constrs)
    max_constr_coef = np.max(abs(bb.root_node.lp.coefMatrix))
    min_constr_bound = min(abs(bb.root_node.lp.constraintsLower))
    dbr_meta[i] = {
        'variables': vars,
        'constraints': constrs,
        'density': density,
        'average objective coefficient': np.mean(abs(bb.root_node.lp.objective)),
        'average constraint bound': np.mean(abs(bb.root_node.lp.constraintsLower)),
        'tightness': max_constr_coef * vars * density / min_constr_bound,
        'gomory_cuts': gomory_cuts
    }

    # compare dual bound from branching and cut gen on <node_limit>-term disjunction
    for node_limit in range(1, max_disjunction + 1):
        print(f'{node_limit} disjunctive terms')
        if bb.status == 'optimal':
            break
        elif node_limit < 4:
            continue
        bb.node_limit = node_limit
        bb.solve()
        for node in bb._node_queue.queue:
            node._bound_lp()
        sol = [0., 0.91428571, 0., 0.50701531, 1.28571429, 0.65816327, 1.89455782,
               0.34920635, 0., 0., 0., 2.46428571, 0.16534392, 0., 0., 0.02380952]
        cglp = CutGeneratingLP(bb=bb, root_id=0)
        cglp_bb = BranchAndBound(model, DCBPCBNode, pseudo_costs={}, node_limit=1,
                                 mip_gap=mip_gap, max_dual_bound=bb.dual_bound,
                                 gomory_cuts=gomory_cuts, cglp=cglp, track_dual_bound=True,
                                 force_create_cglp=True)
        cglp_bb.solve()

        dbr[i, node_limit] = {
            'branching dual bound': bb.dual_bound,
            'cglp dual bound': cglp_bb.root_node.objective_value,
            'cglp iterations': cglp_bb.root_node.number_cglp_added,
            'cut generation iterations': cglp_bb.root_node.cut_generation_iterations,
            'cut generation terminator': cglp_bb.root_node.cut_generation_terminator,
        }
        for cut_gen_iter, obj_val in cglp_bb.root_node.cut_generation_dual_bound.items():
            dbr_iter[i, node_limit, cut_gen_iter] = {
                'dual bound': obj_val
            }

    # append this test to our files
    dbr_meta_df = pd.DataFrame.from_dict(dbr_meta, orient='index')
    dbr_meta_df.index.names = ['test number']
    with open(f'{out_file_base}_meta.csv', 'a') as f:
        dbr_meta_df.to_csv(f, mode='a', header=f.tell() == 0, index=True)

    dbr_df = pd.DataFrame.from_dict(dbr, orient='index')
    dbr_df.index.names = ['test number', 'disjunctive terms']
    with open(f'{out_file_base}.csv', 'a') as f:
        dbr_df.to_csv(f, mode='a', header=f.tell() == 0, index=True)

    dbr_iter_df = pd.DataFrame.from_dict(dbr_iter, orient='index')
    dbr_iter_df.index.names = ['test number', 'disjunctive terms', 'cut generation iteration']
    with open(f'{out_file_base}_iter.csv', 'a') as f:
        dbr_iter_df.to_csv(f, mode='a', header=f.tell() == 0, index=True)


if __name__ == '__main__':
    run_one_test(*sys.argv[1:])