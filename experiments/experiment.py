from cylp.cy.CyClpSimplex import CyClpSimplex
from cylp.cy.CyCbcModel import CyCbcModel
import os
import pandas as pd
import sys
import time

from simple_mip_solver.utils.branch_and_bound_tree import BranchAndBoundTree
from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP

from experiments.disjunctive_cut_generator import DisjunctiveCutGenerator
from experiments.solution import get_solutions
from experiments.utils import get_instance_name, root_gap_closed


def main():

    final_termination_mode, restart_termination_notes, default_iters, both_iters = \
        None, None, None, None
    instance_pth, data_fldr, disjunctive_terms = sys.argv[1:4]

    try:
        restart_termination_mode, final_termination_mode, default_iters, both_iters = \
            run_experiment(*sys.argv[1:])
    except Exception as e:
        restart_termination_mode = 'python failure'
        restart_termination_notes = e.args[0]

    # record termination information for debugging
    # if this code isn't run, we either hit wall time or CLP tripped over itself
    termination_row = {
        'instance': get_instance_name(instance_pth),
        'disjunctive terms': disjunctive_terms,
        'restart termination mode': restart_termination_mode,
        'restart termination notes': restart_termination_notes,
        'final termination mode': final_termination_mode,
        'default cut generation iterations': default_iters,
        'default and disjunctive cut generation iterations': both_iters
    }
    termination_df = pd.DataFrame.from_records([termination_row])
    with open(os.path.join(data_fldr, 'termination.csv'), 'a') as f:
        termination_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)


def run_experiment(instance_pth: str, data_fldr: str, disjunctive_terms: int,
                   instance_solution_fldr: str, max_cut_generators: int,
                   mip_gap: float, min_progress: float, time_limit: float, log: int):

    # convert data types in case passed from command line
    instance_solution_fldr = None if instance_solution_fldr == 'None' else instance_solution_fldr
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
    assert 0 < min_progress < 1  # taken out currently
    assert time_limit > 0
    assert log in range(4), 'log takes integer value between 0 and 3'

    # get values we'll use later
    instance_name = get_instance_name(instance_pth)
    metadata_pth = os.path.join(os.path.dirname(os.path.dirname(instance_pth)),
                                'metadata.csv')
    cut_iteration_data_pth = os.path.join(data_fldr, 'cut_iteration.csv')
    restart_data_pth = os.path.join(data_fldr, 'restart.csv')
    disjunctive_cut_generators = []
    restart_termination_mode = None
    final_termination_mode = None
    default_iters = None
    both_iters = None
    restart_idx = 0
    max_iterations = 50
    bnb = {}
    tree = {}
    lp = CyClpSimplex()
    mdl = lp.extractCyLPModel(instance_pth)
    solutions = get_solutions(instance_pth, instance_solution_fldr)
    lp.primal()
    lp_objective = lp.objectiveValue
    mip_objective = float(pd.read_csv(metadata_pth, index_col='Instance').loc[instance_name, 'Objective'])

    # get data on default cuts
    original_bnb = CyCbcModel(lp)
    original_bnb.persistNodes = True
    original_bnb.solve(arguments=["-preprocess", "off", "-presolve", "off",
                                  "-log", f"{log}", "-maxNodes", "0", "-passCuts",
                                  f"-{max_iterations}", "-seconds", f"{time_limit}"])
    if original_bnb.status == 'stopped on time':
        return 'original time limit'
    minimize = original_bnb.sense == 1  # check to see if this matches mps file
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
                                          f"{disjunctive_terms - 2}", "-passCuts", f"-{max_iterations}",
                                          "-log", f"{log}", "-cuts", "off", "-ratioGap",
                                          f"{mip_gap}", "-seconds", f"{time_limit}"])
        tree[restart_idx] = BranchAndBoundTree(bnb=bnb[restart_idx], root_lp=lp)

        # check termination conditions
        if any(djc.corrupted_cuts for djc in disjunctive_cut_generators):
            restart_termination_mode = 'corrupted cuts'
            print(f'terminating on {restart_termination_mode}')
            break
        if bnb[restart_idx].status in ['solution', 'stopped on gap']:
            restart_termination_mode = 'restart optimality'
            print(f'terminating on {restart_termination_mode}')
            break
        if time.time() - start_time > time_limit:
            restart_termination_mode = 'restart time limit'
            print(f'terminating on {restart_termination_mode}')
            break
        if len(disjunctive_cut_generators) >= max_cut_generators:
            restart_termination_mode = 'max number restarts'
            print(f'terminating on {restart_termination_mode}')
            break

        # Set attributes for next iteration
        cglp = CutGeneratingLP(tree=tree[restart_idx], root_id=0)
        disjunctive_cut_generators.append(
            DisjunctiveCutGenerator(mdl=mdl, cglp=cglp, solutions=solutions)
        )
        restart_idx += 1

    # get data on both default and disjunctive cuts
    final_bnb = CyCbcModel(lp)
    final_bnb.persistNodes = True
    for restart_idx, cut_generator in enumerate(disjunctive_cut_generators):
        # add each disjunctive cut generator at the root node only
        final_bnb.addPythonCutGenerator(cut_generator, howOften=-99,
                                        name=f"PyDisjunctive_{restart_idx}".encode('utf-8'))
    final_bnb.solve(arguments=["-preprocess", "off", "-presolve", "off", "-log",
                               f"{log}", "-maxNodes", "0", "-passCuts", f"-{max_iterations}",
                               "-seconds", f"{time_limit*2}"])
    final_termination_mode = final_bnb.status

    # capture root bound improvement for models running default cuts, disjunctive cuts only, and both
    if restart_termination_mode != 'corrupted cuts':
        keys = {
            original_bnb: 'default',
            bnb[len(disjunctive_cut_generators)]: 'disjunctive only',
            final_bnb: 'default and disjunctive'
        }
        default_iters = len(original_bnb.rootCutsDualBound)
        both_iters = len(final_bnb.rootCutsDualBound)

        for bnb_mdl, cut_type in keys.items():
            cut_rows = []
            prev_root_dual_bound = 0
            root_cuts_dual_bound = bnb_mdl.rootCutsDualBound
            for idx in range(max_iterations):
                current_root_dual_bound = root_cuts_dual_bound[idx] if \
                    idx < len(root_cuts_dual_bound) else root_cuts_dual_bound[-1]
                cut_row = {
                    'instance': instance_name,
                    'cuts': cut_type,
                    'disjunctive terms': disjunctive_terms,
                    'cut generation iteration': idx + 1,
                    'root gap closed': root_gap_closed(current_root_dual_bound, lp_objective, mip_objective),
                    'additional root gap closed': (
                            root_gap_closed(current_root_dual_bound, lp_objective, mip_objective) -
                            root_gap_closed(prev_root_dual_bound, lp_objective, mip_objective)
                    ),
                }
                cut_rows.append(cut_row)
                prev_root_dual_bound = current_root_dual_bound
            cut_df = pd.DataFrame.from_records(cut_rows)
            with open(cut_iteration_data_pth, 'a') as f:
                cut_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

        # record root gap from adding each additional disjunctive cut generator
        restart_rows = []
        prev_root_dual_bound = 0
        for idx, bnb_mdl in bnb.items():
            current_root_dual_bound = bnb_mdl.rootCutsDualBound[-1]
            restart_row = {
                'instance': instance_name,
                'disjunctive terms': disjunctive_terms,
                'restart': idx,
                'root gap closed': root_gap_closed(current_root_dual_bound, lp_objective, mip_objective),
                'additional root gap closed': (
                        root_gap_closed(current_root_dual_bound, lp_objective, mip_objective) -
                        root_gap_closed(prev_root_dual_bound, lp_objective, mip_objective)
                ),
                'iterations': len(bnb_mdl.rootCutsDualBound)
            }
            restart_rows.append(restart_row)
            prev_root_dual_bound = current_root_dual_bound
        restart_df = pd.DataFrame.from_records(restart_rows)
        with open(restart_data_pth, 'a') as f:
            restart_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

    return restart_termination_mode, final_termination_mode, default_iters, both_iters


if __name__ == '__main__':
    main()
