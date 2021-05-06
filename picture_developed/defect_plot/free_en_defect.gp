
N = 100*6.022e23
G0 = 3  #free energy for a perfect crystal
dHv = 0.66
dSv = 0.07
T = 298.
kB = 8.617e-5

f_1(x) = x*(dHv - T*dSv)
f_3(x) = kB*T*(N*log(N/(N+x)) + x*log(x/(N+x)))
G(x) = G0 + x*dHv + kB*T*(N*log(N/(N+x)) + x*log(x/(N+x))) - x*T*dSv
try(x) = kB*(N*log(N) - (N-x)*log(N-x) - x*log(x))

set xrange [0:1e20]
#plot f_1(x) w l, f_3(x) w l, G(x) w l 
plot try(x) w l
