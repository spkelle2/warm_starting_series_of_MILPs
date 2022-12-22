from cylp.cy.CyClpSimplex import CyClpSimplex
import os
import pandas as pd
import subprocess
from typing import List

from experiments.experiment import get_instance_name


def run_batch(instance_fldr: str, data_fldr: str, disjunctive_term_list: List[int],
              solutions_fldr: str = None, time_limit: float = 2400, log: int = 0,
              max_cut_generators: int = 20, mip_gap: float = 1e-2,
              min_progress: float = 1e-4, run_pbs: bool = True):

    assert os.path.exists(instance_fldr), 'instance folder should already exist'
    assert not os.path.exists(data_fldr), 'data folder should not already exist'
    assert solutions_fldr is None or os.path.exists(solutions_fldr), 'solutions folder should already exist'
    os.mkdir(data_fldr)

    num_experiments = len(os.listdir(instance_fldr)) * len(disjunctive_term_list)

    # record experiment information
    experiment_row = {
        'instance folder': instance_fldr,
        'data folder': data_fldr,
        'disjunctive terms': len(disjunctive_term_list),
        'disjunction time limit': time_limit,
        'max cut generators': max_cut_generators,
        'min progress': min_progress
    }
    experiment_df = pd.DataFrame.from_records([experiment_row])
    with open(os.path.join(data_fldr, 'experiment.csv'), 'a') as f:
        experiment_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

    for i, instance in enumerate(os.listdir(instance_fldr)):
        instance_name = get_instance_name(instance)
        instance_pth = os.path.join(instance_fldr, instance)
        instance_solution_fldr = os.path.join(solutions_fldr, instance_name) if solutions_fldr else 'None'

        # record instance information
        instance_row = {
            'instance': instance_name,
        }
        experiment_df = pd.DataFrame.from_records([instance_row])
        with open(os.path.join(data_fldr, 'instance.csv'), 'a') as f:
            experiment_df.to_csv(f, mode='a', header=f.tell() == 0, index=False)

        for j, disjunctive_terms in enumerate(disjunctive_term_list):
            experiment_idx = i*len(disjunctive_term_list) + j + 1
            print(f'\n\nrunning experiment {experiment_idx} of {num_experiments}\n\n')

            # run individual experiment
            if not run_pbs:
                subprocess.call(['python', 'experiment.py', instance_pth, data_fldr,
                                 str(disjunctive_terms), instance_solution_fldr,
                                 str(max_cut_generators), str(mip_gap),
                                 str(min_progress), str(time_limit), str(log)])
            else:
                arg_str = f'instance_pth={instance_pth},data_fldr={data_fldr},' \
                          f'disjunctive_terms={disjunctive_terms},' \
                          f'instance_solution_fldr={instance_solution_fldr},' \
                          f'max_cut_generators={max_cut_generators},mip_gap={mip_gap},' \
                          f'min_progress={min_progress},time_limit={time_limit},log={log}'
                size = 'short' if disjunctive_terms < 10 else 'medium'
                subprocess.call(['qsub', '-V', '-q', size, '-l', 'ncpus=4,mem=7gb,vmem=7gb,pmem=7gb',
                                 '-v', arg_str, '-e', f'{instance_name}_{disjunctive_terms}.err',
                                 '-o', f'{instance_name}_{disjunctive_terms}.out', 'submit.pbs'])


if __name__ == '__main__':
    wkdir = os.path.dirname(os.path.realpath(__file__))
    run_batch(instance_fldr=os.path.join(wkdir, 'instances/small'),
              data_fldr=os.path.join(wkdir, 'data/small'),
              disjunctive_term_list=[4, 8, 16, 32],
              solutions_fldr=os.path.join(wkdir, 'solutions'), log=3)
