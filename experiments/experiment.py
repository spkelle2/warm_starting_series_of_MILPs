from cylp.cy.CyClpSimplex import CyClpSimplex
from cylp.cy.CyCbcModel import CyCbcModel
import os
import pandas as pd
import sys
import time

from simple_mip_solver.utils.branch_and_bound_tree import BranchAndBoundTree
from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP

from experiments.disjunctive_cut_generator import DisjunctiveCutGenerator


def main():

    instance_pth, data_fldr, disjunctive_terms = sys.argv[1:4]

    try:
        termination_mode = run_experiment(*sys.argv[1:])
    except Exception as e:
        termination_mode = 'python failure'

    # record termination information for debugging
    # if this code isn't run, we either hit wall time or CLP tripped over itself
    termination_row = {
        'instance': get_instance_name(instance_pth),
        'disjunctive terms': disjunctive_terms,
        'termination mode': termination_mode,
    }
    termination_df = pd.DataFrame.from_records([termination_row])
    with open(os.path.join(data_fldr, 'termination.csv'), 'a') as f:
        termination_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)


def get_instance_name(instance_pth):
    return instance_pth.split('/')[-1].split('.')[0]


def root_gap_closed(root_dual_bound, lp_optimal_objective, mip_optimal_objective):
    return abs(root_dual_bound - lp_optimal_objective) / \
           abs(mip_optimal_objective - lp_optimal_objective)


def run_experiment(instance_pth: str, data_fldr: str, disjunctive_terms: int,
                   max_cut_generators: int, mip_gap: float, min_progress: float,
                   time_limit: float, log: int):

    # convert data types in case passed from command line
    disjunctive_terms = int(disjunctive_terms)
    max_cut_generators = int(max_cut_generators)
    mip_gap = float(mip_gap)
    min_progress = float(min_progress)
    time_limit = float(time_limit)
    log = int(log)

    # check to make sure data is reasonable
    assert os.path.exists(instance_pth), 'instance_pth should exist'
    assert os.path.isdir(data_fldr), 'data_fldr should exist'
    assert disjunctive_terms >= 2, 'disjunctive_terms >= 2'
    assert max_cut_generators > 0
    assert 0 < mip_gap < 1
    assert 0 < min_progress < 1
    assert time_limit > 0
    assert log in range(4), 'log takes integer value between 0 and 3'

    # get values we'll use later
    instance_name = get_instance_name(instance_pth)
    cut_iteration_data_pth = os.path.join(data_fldr, 'cut_iteration.csv')
    restart_data_pth = os.path.join(data_fldr, 'restart.csv')
    disjunctive_cut_generators = []
    prev_dual_bound = -float('inf')
    termination_mode = None
    restart_idx = 0
    bnb = {}
    tree = {}
    lp = CyClpSimplex()
    mdl = lp.extractCyLPModel(instance_pth)
    lp.primal()
    lp_objective = lp.objectiveValue

    # determine optimization sense
    first_bnb = CyCbcModel(lp)
    first_bnb.solve(arguments=["-maxSolutions", "1"])
    minimize = first_bnb.bestPossibleObjValue <= first_bnb.objectiveValue

    # get values for determining validity and gap closure
    solved_bnb = CyCbcModel(lp)
    solved_bnb.solve(arguments=["-ratioGap", f"{mip_gap}", "-seconds", f"{time_limit}"])
    if solved_bnb.status == 'stopped on time':
        return 'default time limit'
    mip_objective = solved_bnb.objectiveValue

    # get data on default cuts
    original_bnb = CyCbcModel(lp)
    original_bnb.persistNodes = True
    original_bnb.solve(arguments=["-preprocess", "off", "-presolve", "off",
                                  "-log", f"{log}", "-maxNodes", "1"])
    start_time = time.time()

    # get data on only disjunctive cuts
    while True:
        print(f'iteration {len(disjunctive_cut_generators)} of {max_cut_generators}')

        # set attributes to use throughout this iteration
        bnb[restart_idx] = CyCbcModel(lp)
        bnb[restart_idx].persistNodes = True
        for j, cut_generator in enumerate(disjunctive_cut_generators):
            # apply disjunctive cuts at root node only
            bnb[restart_idx].addPythonCutGenerator(cut_generator, howOften=-99,
                                                   name=f"PyDisjunctive_{j}".encode('utf-8'))
        bnb[restart_idx].solve(arguments=["-preprocess", "off", "-presolve", "off", "-maxNodes",
                                          f"{disjunctive_terms - 2}", "-log", f"{log}", "-cuts", "off",
                                          "-ratioGap", f"{mip_gap}", "-seconds", f"{time_limit}"])
        tree[restart_idx] = BranchAndBoundTree(bnb=bnb[restart_idx], root_lp=lp)

        # check termination conditions
        if bnb[restart_idx].status in ['solution', 'stopped on gap']:
            termination_mode = 'restart optimality'
            print(f'terminating on {termination_mode}')
            break
        if abs(bnb[restart_idx].bestPossibleObjValue - prev_dual_bound)/ \
                max(abs(bnb[restart_idx].bestPossibleObjValue), 1e-4) < min_progress:
            termination_mode = 'restart stall'
            print(f'terminating on {termination_mode}')
            break
        if time.time() - start_time > time_limit:
            termination_mode = 'restart time limit'
            print(f'terminating on {termination_mode}')
            break
        if len(disjunctive_cut_generators) >= max_cut_generators:
            termination_mode = 'max number restarts'
            print(f'terminating on {termination_mode}')
            break

        # Set attributes for next iteration
        cglp = CutGeneratingLP(tree=tree[restart_idx], root_id=0)
        disjunctive_cut_generators.append(DisjunctiveCutGenerator(cyLPModel=mdl, cglp=cglp))
        prev_dual_bound = bnb[restart_idx].bestPossibleObjValue
        restart_idx += 1

    # get data on both default and disjunctive cuts
    termination_mode = termination_mode
    final_bnb = CyCbcModel(lp)
    final_bnb.persistNodes = True
    for restart_idx, cut_generator in enumerate(disjunctive_cut_generators):
        # add each disjunctive cut generator at the root node only
        final_bnb.addPythonCutGenerator(cut_generator, howOften=-99,
                                           name=f"PyDisjunctive_{restart_idx}".encode('utf-8'))
    final_bnb.solve(arguments=["-preprocess", "off", "-presolve", "off", "-log",
                               f"{log}", "-maxNodes", "1"])

    # check if we cut off optimal solution (i.e. majorly messed up)
    if (minimize and final_bnb.bestPossibleObjValue > mip_objective + .01) or \
            (not minimize and final_bnb.bestPossibleObjValue < mip_objective - .01):
        termination_mode = 'corrupted cuts'

    # capture root bound improvement for models running default cuts, disjunctive cuts only, and both
    else:
        keys = {
            original_bnb: 'default',
            bnb[len(disjunctive_cut_generators)]: 'disjunctive only',
            final_bnb: 'default and disjunctive'
        }

        for bnb_mdl, cut_type in keys.items():
            cut_rows = []
            root_cuts_dual_bound = bnb_mdl.rootCutsDualBound
            for idx in range(100):
                root_bound = root_cuts_dual_bound[idx] if idx < len(root_cuts_dual_bound) \
                    else root_cuts_dual_bound[-1]
                cut_row = {
                    'instance': instance_name,
                    'cuts': cut_type,
                    'disjunctive terms': disjunctive_terms,
                    'cut generation iteration': idx + 1,
                    'root gap closed': root_gap_closed(root_bound, lp_objective, mip_objective)
                }
                cut_rows.append(cut_row)
            cut_df = pd.DataFrame.from_records(cut_rows)
            with open(cut_iteration_data_pth, 'a') as f:
                cut_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

        # record root gap from adding each additional disjunctive cut generator
        restart_rows = []
        for idx, bnb_mdl in bnb.items():
            restart_row = {
                'instance': instance_name,
                'disjunctive terms': disjunctive_terms,
                'restart': idx,
                'root gap closed': root_gap_closed(bnb_mdl.rootCutsDualBound[-1],
                                                   lp_objective, mip_objective),
            }
            restart_rows.append(restart_row)
        restart_df = pd.DataFrame.from_records(restart_rows)
        with open(restart_data_pth, 'a') as f:
            restart_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

    return termination_mode


if __name__ == '__main__':
    main()
