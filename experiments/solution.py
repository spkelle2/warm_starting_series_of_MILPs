import gurobipy as gu
import gzip
import numpy as np
import os
import re
import shutil

from experiments.utils import get_instance_name


def get_solutions(instance_pth, instance_solution_fldr):
    """ Read in all known solutions for this instance

    :param instance_pth:
    :param instance_solution_fldr:
    :return:
    """
    assert os.path.exists(instance_pth), 'instance_pth should exist'
    assert os.path.isdir(instance_solution_fldr), 'solution_fldr should exist'

    solutions = []
    instance_name = get_instance_name(instance_pth)
    pattern = re.compile(r'^(\S+)\s+(\S+)')
    # get a map of variable names to indices so we can fill their values in the solution array
    mdl = gu.read(instance_pth)
    var_idx = {variable.varName: variable.index for variable in mdl.getVars()}

    # find the solution file for each stored solution
    for solution_number in os.listdir(instance_solution_fldr):
        if solution_number == '.DS_Store':
            continue

        seen_vars = set()
        sol = np.zeros(len(var_idx))
        solution_fldr = os.path.join(instance_solution_fldr, solution_number)

        with open(os.path.join(solution_fldr, f'{instance_name}.sol')) as f:
            lines = f.readlines()
            # for each recorded variable, put its solution value in the corresponding index
            for line_idx, line in enumerate(lines):
                match = pattern.search(line)
                if line_idx == 0:
                    assert not match, f"Should not match line 0"
                else:
                    assert match, "we should match all lines except the first"
                    var_name, var_value = match.group(1), float(match.group(2))
                    assert var_name not in seen_vars, "repeated name in solution file"
                    if line_idx == 1:
                        assert var_name == '=obj=', "line 1 should be objective"
                    else:
                        sol[var_idx[var_name]] = var_value
                        seen_vars.add(var_name)
        solutions.append(sol)

    return solutions


def inflate_solutions(instance_set: str):
    wkdir = os.path.dirname(os.path.realpath(__file__))
    instance_fldr = os.path.join(wkdir, 'instances', instance_set)

    assert os.path.isdir(instance_fldr), 'instance folder should exist'
    assert os.path.isdir(os.path.join(wkdir, 'solutions')), 'solution directory should exist'

    for instance in os.listdir(instance_fldr):
        instance_name = get_instance_name(instance)
        instance_solution_fldr = os.path.join(wkdir, 'solutions', instance_name)

        if not os.path.isdir(instance_solution_fldr):
            print(f'no solutions found for {instance_name}')
            continue

        for solution_number in os.listdir(instance_solution_fldr):
            if solution_number == '.DS_Store':
                continue
            solution_fldr = os.path.join(instance_solution_fldr, solution_number)

            if f'{instance_name}.sol' not in os.listdir(solution_fldr):
                solution_pth = os.path.join(solution_fldr, f'{instance_name}.sol')
                with gzip.open(f'{solution_pth}.gz', 'rb') as f_in:
                    with open(solution_pth, 'wb') as f_out:
                        shutil.copyfileobj(f_in, f_out)


if __name__ == '__main__':
    inflate_solutions(instance_set='small')