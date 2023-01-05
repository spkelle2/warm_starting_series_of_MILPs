import os
import shutil
import unittest

from experiments.batch_runner import run_batch


class TestNode(unittest.TestCase):

    def setUp(self) -> None:
        self.experiment_dir = os.path.join(
            os.path.dirname(os.path.dirname(os.path.realpath(__file__))), 'experiments'
        )
        os.chdir(self.experiment_dir)
        self.instance_dir = os.path.join(self.experiment_dir, 'instances/test')
        self.data_dir = os.path.join(self.experiment_dir, 'data/test')
        self.solutions_dir = os.path.join(self.experiment_dir, 'solutions')
        shutil.rmtree(self.data_dir, ignore_errors=True)

    def tearDown(self) -> None:
        # shutil.rmtree(self.data_dir, ignore_errors=True)
        pass

    def test_run_batch(self):
        run_batch(instance_fldr=self.instance_dir, data_fldr=self.data_dir,
                  disjunctive_term_list=[4, 8], solutions_fldr=self.solutions_dir,
                  log=3, time_limit=60, max_cut_generators=10, run_pbs=False)


if __name__ == '__main__':
    unittest.main()
