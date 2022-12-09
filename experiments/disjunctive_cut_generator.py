from cylp.py.modeling.CyLPModel import CyLPModel, CyLPArray
import numpy as np

from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP


class DisjunctiveCutGenerator:
    def __init__(self, cyLPModel: CyLPModel, cglp: CutGeneratingLP, min_cglp_norm: float = 1e-4):
        self.cyLPModel = cyLPModel
        self.cglp = cglp
        self.min_cglp_norm = min_cglp_norm

    def generateCuts(self, si, cglTreeInfo):
        # print('finding disjunctive cut')
        cuts = []
        x = self.cyLPModel.getVarByName('x')
        solution = CyLPArray(si.primalVariableSolution)

        pi, pi0 = self.cglp.solve(x_star=solution)
        if pi is not None and pi0 is not None and np.linalg.norm(pi) > self.min_cglp_norm:
            cuts = [pi*x >= pi0]

        return cuts
