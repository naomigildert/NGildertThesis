#!/usr/bin/env python

# This script is used to randomly generate new environments, it generates random x and y coordinates for the start and end position of the path, a random number of cylinders and boxes for obstacles, the size of the obstacles and their x and y coordinates 

from random import random as r

# setting minimum and maximum boundaries for parameters 
num_boxes_min = 2
num_boxes_max = 5

num_cyls_min = 2
num_cyls_max = 5

size_boxes_min = 0.5
size_boxes_max = 1.5

size_cylinder_min = 0.5
size_cylinder_max = 1

for i in range(5):
    with open('e%d.csv' % i, 'w') as f:
	# generate x and y coordinates for the start and end positions of the path in the environment, and write to file
        f.write('s, %f, %f\n' % ((r()-0.5)*4.5, (r()-0.5)*4.5))
        f.write('e, %f, %f\n' % ((r()-0.5)*4.5, (r()-0.5)*4.5))
	# generate number of cylinders and boxes to include in the environment
        num_cyl = num_cyls_min + int(r()*(num_cyls_max-num_cyls_min))
        num_box = num_boxes_min + int(r()*(num_boxes_max-num_boxes_min))
	# generate sizes of the cylinders, their x and y coordinates and write to file 
        for _ in range(num_cyl):
	    size_cyl = size_cylinder_min + r()*(size_cylinder_max-size_cylinder_min)		
            f.write('c, %f, %f, %f\n' % ((r()-0.5)*3.75, (r()-0.5)*3.75, size_cyl))
        for _ in range(num_box):
	# generate sizes of the boxes, their x and y coordinates and write to file 
	    width_box = size_boxes_min + r()*(size_boxes_max-size_boxes_min)
	    depth_box = size_boxes_min + r()*(size_boxes_max-size_boxes_min)
            f.write('b, %f, %f, %f, %f, %f\n' % ((r()-0.5)*3.75, (r()-0.5)*3.75, width_box, depth_box, r()*360))
