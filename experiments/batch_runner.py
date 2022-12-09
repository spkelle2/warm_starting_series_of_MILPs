from itertools import product
import os
import subprocess
from typing import List

from experiment import run_experiment


def run_batch(instance_fldr: str, data_fldr: str, disjunctive_term_list: List[int],
              time_limit: float = 30, log: int = 3, max_cut_generators: int = 8,
              mip_gap: float = 1e-2, min_progress: float = 1e-4):

    assert os.path.exists(instance_fldr), 'instance folder should already exist'
    assert not os.path.exists(data_fldr), 'data folder should not already exist'
    os.mkdir(data_fldr)

    combos = list(product(os.listdir(instance_fldr), disjunctive_term_list))
    for i, (instance, disjunctive_terms) in enumerate(combos):
        print(f'\n\nrunning experiment {i + 1} of {len(combos)}\n\n')
        instance_pth = os.path.join(instance_fldr, instance)
        # run_experiment(instance_pth=instance_pth, data_fldr=data_fldr,
        #                disjunctive_terms=disjunctive_terms, max_cut_generators=max_cut_generators,
        #                mip_gap=mip_gap, min_progress=min_progress, time_limit=time_limit,
        #                log=log)
        subprocess.call(['python', 'experiment.py', instance_pth, data_fldr,
                         str(disjunctive_terms), str(max_cut_generators),
                         str(mip_gap), str(min_progress), str(time_limit), str(log)])


if __name__ == '__main__':
    wkdir = os.path.join(os.path.dirname(os.path.realpath(__file__)))
    run_batch(instance_fldr=os.path.join(wkdir, 'instances'), data_fldr=os.path.join(wkdir, 'data'),
              disjunctive_term_list=[8, 16], log=0)
