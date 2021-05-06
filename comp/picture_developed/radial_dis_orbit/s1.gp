set terminal postscript enhanced eps color
set output "rad1s.eps"

reset
set samples 400
set xrange [0:15]
RWF1s(x) = exp(-x)/sqrt(pi)
RWF2s(x) = (2-x)*exp(-x/2)/(4*sqrt(2*pi))
RWF3s(x) = (27-18*x + 2*x**2)*exp(-x/3)/(81*sqrt(3*pi))
RDF1s(x) = 4*x**2*exp(-2*x)
RDF2s(x) = x**2*(2-x)**2*exp(-x)/8
RDF3s(x) = 4*x**2*(27-18*x+2*x**2)**2*exp(-2*x/3)/(81**2*2)
plot RWF1s(x) w l lw 3, RWF2s(x) w l lw 3, RWF3s(x), RDF1s(x), RDF2s(x), RDF3s(x)
