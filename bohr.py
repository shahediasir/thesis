import numpy as np
hbar = 1.054571817e-34  #J.s
e = 1.602176634e-19 #C
epsilon0 = 8.8541878128e-12 #F/m
me = 9.1093837015e-31  #kg

a0 = 4*np.pi*epsilon0*hbar**2/(me*e**2)

print(a0)

