def get_instance_name(instance_pth):
    return instance_pth.split('/')[-1].split('.')[0]


def root_gap_closed(root_dual_bound, lp_optimal_objective, mip_optimal_objective):
    return abs(root_dual_bound - lp_optimal_objective) / \
           abs(mip_optimal_objective - lp_optimal_objective)
