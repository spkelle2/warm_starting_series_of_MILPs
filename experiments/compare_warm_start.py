import numpy as np
import os
from pathlib import Path
import subprocess


def main(cut_offs, in_fldr, out_file='warm_start_comparison.csv', mip_gap=.01,
         gomory_cuts='True'):
    # check cut offs sorted in increasing order
    assert ((np.array([0] + cut_offs)) < (np.array(cut_offs + [float('inf')]))).all(), \
        'please put cut off sizes in increasing order'

    # delete output file if it exists
    Path(out_file).unlink(missing_ok=True)

    # I think I just need to create the different run options in the same test
    for i, file in enumerate(os.listdir(in_fldr)):
        print(f'\nrunning test {i}')
        # turn off for pycharm version
        if i > 0:
            continue
        for cut_off in cut_offs:
            if cut_off != 16:
                continue
            subprocess.call(['python', 'iterate.py', str(i), file, in_fldr, str(mip_gap),
                             str(cut_off), out_file, str(gomory_cuts)])


if __name__ == '__main__':
    in_fldr = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'scale_8_models')
    # turn off for pycharm version
    main([4, 8, 16, 32], in_fldr, out_file='warm_start_comparison.csv', gomory_cuts='False')
