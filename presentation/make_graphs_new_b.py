from coinor.grumpy.polyhedron2D import Polyhedron2D, Figure

# P^0
points = [[0, 0], [0, 2], [12/5, 16/5], [4, 0]]
new_points = [[0, 0], [0, 3], [14/5, 22/5], [5, 0]]
rays = []
c = [1, 4]
opt = [14/5, 22/5]
loc = (opt[0]-0.2, opt[1]+0.2)
obj_val = 102/5

op = Polyhedron2D(points = points, rays = rays)
p = Polyhedron2D(points = new_points, rays = rays)
f = Figure()
f.add_polyhedron(op, label = 'Polyhedron $P^0$', color = 'blue', show_int_points=True)
f.add_polyhedron(p, label = r'Polyhedron $\tilde{P}^0$', color = 'red', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(c, obj_val, p.xlim + [0, 0.8], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")
f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))
f.show(wait_for_click=False, filename='P0_prime.png')

# P^1
points = [[0, 0], [0, 2], [2, 3], [2, 0]]
new_points = [[0, 0], [0, 3], [2, 4], [2, 0]]
rays = []
c = [1, 4]
opt = [2, 4]
loc = (opt[0]+0.1, opt[1]+0.1)
obj_val = 18

op = Polyhedron2D(points = points, rays = rays)
p = Polyhedron2D(points = new_points, rays = rays)
f = Figure()
f.add_polyhedron(op, label = 'Polyhedron $P^1$', color = 'blue', show_int_points=True)
f.add_polyhedron(p, label = r'Polyhedron $\tilde{P}^1$', color = 'red', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]+3])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(c, obj_val, p.xlim + [0, 3], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")

f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))

f.show(wait_for_click=False, filename='P1_prime.png')

# P^2
new_points = [[3, 0], [3, 4], [5, 0]]
points = [[3, 0], [3, 2], [4, 0]]
rays = []
c = [1, 4]
opt = [3, 4]
loc = (opt[0]+0.1, opt[1]+0.1)
obj_val = 19

op = Polyhedron2D(points = points, rays = rays)
p = Polyhedron2D(points = new_points, rays = rays)
f = Figure()
f.add_polyhedron(op, label = 'Polyhedron $P^2$', color = 'blue', show_int_points=True)
f.add_polyhedron(p, label = r'Polyhedron $\tilde{P}^2$', color = 'red', show_int_points=True)
f.set_xlim([p.xlim[0] - 3, p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1] + 1])
f.add_line(c, obj_val, p.xlim + [-3.2, 0.8], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")

f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))

f.show(wait_for_click=False, filename='P2_prime.png')

# P_D
right_points = [[3, 0], [3, 4], [5, 0]]
left_points = [[0, 0], [0, 3], [2, 4], [2, 0]]
new_points = [[0, 0], [0, 3], [14/5, 22/5], [5, 0]]
rays = []
cut = [0, 1]
intersect = 4

lp = Polyhedron2D(points = left_points, rays = rays)
rp = Polyhedron2D(points = right_points, rays = rays)
p = Polyhedron2D(points = new_points, rays = rays)
f = Figure()
f.add_polyhedron(p, label = r'Polyhedron $\tilde{P}^0$', color = 'red', show_int_points=True,
                 linestyle = 'dashed')
f.add_polyhedron(lp, label = r'Polyhedron $\tilde{P}^1$', color = 'red', show_int_points=True)
f.add_polyhedron(rp, label = r'Polyhedron $\tilde{P}^2$', color = 'red', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(cut, intersect, p.xlim + [0, 1], p.ylim + [0, 1.8],
           linestyle = 'dashed', color = 'green',
           label = r"Valid Cut for conv($\tilde{P}^1 \cup \tilde{P}^2$)")
f.show(wait_for_click=False, filename='PD_prime.png')

print()