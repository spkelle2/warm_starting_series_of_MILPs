from coinor.grumpy.polyhedron2D import Polyhedron2D, Figure

# P^0
points = [[0, 0], [0, 2], [12/5, 16/5], [4, 0]]
rays = []
c = [1, 4]
opt = [12/5, 16/5]
loc = (opt[0]+0.1, opt[1]+0.1)
obj_val = 76/5

p = Polyhedron2D(points = points, rays = rays)
f = Figure()
f.add_polyhedron(p, label = 'Polyhedron $P^0$', color = 'blue', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(c, obj_val, p.xlim + [0, 0.8], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")
f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))
f.show(wait_for_click=False, filename='P0.png')

# P^1
points = [[0, 0], [0, 2], [2, 3], [2, 0]]
rays = []
c = [1, 4]
opt = [2, 3]
loc = (opt[0]+0.1, opt[1]+0.1)
obj_val = 14

p = Polyhedron2D(points = points, rays = rays)
f = Figure()
f.add_polyhedron(p, label = 'Polyhedron $P^1$', color = 'blue', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]+2])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(c, obj_val, p.xlim + [0, 2], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")

f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))

f.show(wait_for_click=False, filename='P1.png')

# P^2
points = [[3, 0], [3, 2], [4, 0]]
rays = []
c = [1, 4]
opt = [3, 2]
loc = (opt[0]+0.1, opt[1]+0.1)
obj_val = 11

p = Polyhedron2D(points = points, rays = rays)
f = Figure()
f.add_polyhedron(p, label = 'Polyhedron $P^2$', color = 'blue', show_int_points=True)
f.set_xlim([p.xlim[0] - 3, p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1] + 1])
f.add_line(c, obj_val, p.xlim + [-3.2, 0.8], p.ylim + [0.2, 1.8],
           linestyle = 'dashed', color = 'black', label = "Objective Function")

f.add_point(opt, 0.04, 'red')
f.add_text(loc, r'$x^* = %s$' % str(opt))

f.show(wait_for_click=False, filename='P2.png')

# P_D
points = [[0, 0], [0, 2], [12/5, 16/5], [4, 0]]
rays = []
cut = [1, 1]
intersect = 5

p = Polyhedron2D(points = points, rays = rays)
f = Figure()
f.add_polyhedron(p, label = 'Polyhedron $P^0$', color = 'blue', show_int_points=True)
f.set_xlim([p.xlim[0], p.xlim[1]])
f.set_ylim([p.ylim[0], p.ylim[1]])
f.add_line(cut, intersect, p.xlim + [0, 1], p.ylim + [0, 1.8],
           linestyle = 'dashed', color = 'green', label = "Valid Cut for conv($P^1 \cup P^2$)")
f.show(wait_for_click=False, filename='PD.png')

print()