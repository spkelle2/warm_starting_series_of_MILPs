from cylp.py.modeling.CyLPModel import CyLPModel, CyLPArray
import numpy as np
from typing import List

from simple_mip_solver.utils.cut_generating_lp import CutGeneratingLP
from simple_mip_solver.utils.floating_point import numerically_safe_cut


class DisjunctiveCutGenerator:
    def __init__(self, mdl: CyLPModel, cglp: CutGeneratingLP,
                 min_cglp_norm: float = 1e-4, solutions: List[np.ndarray] = None):
        solutions = solutions or []

        assert isinstance(mdl, CyLPModel), 'cyLPModel should be a CyLPModel'
        assert len(mdl.constraints) == 1, 'all constraints should be read into 1 object'
        assert len(mdl.variables) == 1, 'all variables should be read into 1 object'
        assert isinstance(cglp, CutGeneratingLP), 'cglp should be a CutGeneratingLP'
        assert 0 < min_cglp_norm, 'min_cglp_norm > 0'
        if solutions:
            assert all(isinstance(sol, np.ndarray) for sol in solutions), \
                'solutions is a list of arrays'
            assert all(sol.shape == (mdl.nVars,) for sol in solutions), \
                'solutions should have same dimensions as variables'

        self.mdl = mdl
        self.cglp = cglp
        self.min_cglp_norm = min_cglp_norm
        self.solutions = solutions
        self.corrupted_cuts = False

    def generateCuts(self, si, cglTreeInfo):
        cuts = []
        x = self.mdl.getVarByName('x')
        solution = CyLPArray(si.primalVariableSolution)

        pi, pi0 = self.cglp.solve(x_star=solution)
        if pi is not None and pi0 is not None and np.linalg.norm(pi) > self.min_cglp_norm:
            safe_pi, safe_pi0 = numerically_safe_cut(pi=pi, pi0=pi0, estimate='over')
            self.check_cut(safe_pi, safe_pi0)
            cuts = [safe_pi*x >= safe_pi0]
        return cuts

    def check_cut(self, pi, pi0):
        """ raise an exception if sol belongs to this disjunctive term's LP (first two checks)
        relaxation and the cut violates it (third check) so we can debug here and figure out what
        is going on """
        x = self.mdl.getVarByName('x')
        c = self.mdl.constraints[0]
        for s in self.solutions:
            respects_variable_bounds = all((x.lower <= s) * (s <= x.upper))
            respects_constraints = all(
                (c.lower.reshape(-1, 1) <= c.varCoefs[x] * np.vstack(s)) *
                (c.varCoefs[x] * np.vstack(s) <= c.upper.reshape(-1, 1))
            )
            violates_cut = np.dot(pi, s) < pi0 - 1e-14
            if (respects_variable_bounds and respects_constraints and violates_cut):
                self.corrupted_cuts = True
