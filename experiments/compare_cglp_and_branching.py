import os
from pathlib import Path
import subprocess


def main(in_fldr, out_file_base='cglp_progress_tracker', mip_gap=.01, gomory_cuts=True,
         max_disjunction=32):

    # delete output file if it exists
    for end in ['.csv', '_meta.csv', '_iter.csv']:
        Path(out_file_base + end).unlink(missing_ok=True)

    # I think I just need to create the different run options in the same test
    for i, file in enumerate(os.listdir(in_fldr)):
        print(f'\nrunning test {i}')
        # if i < 43:
        #     continue
        subprocess.call(['python', 'track_instance_cglp_progress.py', str(i), file,
                         in_fldr, str(mip_gap), out_file_base, str(gomory_cuts),
                         str(max_disjunction)])


if __name__ == '__main__':
    in_fldr = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'scale_8_models')
    main(in_fldr, out_file_base='gmic_cglp_progress_tracker')
