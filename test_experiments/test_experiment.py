import os
import shutil
import unittest

from experiments.experiment import run_experiment


class TestNode(unittest.TestCase):

    def setUp(self) -> None:
        self.root_dir = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
        self.data_dir = os.path.join(self.root_dir, 'experiments/data/test')
        shutil.rmtree(self.data_dir, ignore_errors=True)
        os.mkdir(self.data_dir)

    def tearDown(self) -> None:
        shutil.rmtree(self.data_dir, ignore_errors=True)

    def test_run_experiment(self):
        instance_pth = os.path.join(self.root_dir, 'experiments/instances/small/b-ball.mps')
        instance_solution_fldr = os.path.join(self.root_dir, 'experiments/solutions/b-ball')
        run_experiment(instance_pth=instance_pth, data_fldr=self.data_dir,
                       disjunctive_terms=4, instance_solution_fldr=instance_solution_fldr,
                       max_cut_generators=3, mip_gap=.01, min_progress=1e-4,
                       time_limit=60, log=3)


if __name__ == '__main__':
    unittest.main()
