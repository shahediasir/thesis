
set terminal postscript enhanced eps color
set output "radialdistfuncS.eps"
reset
set samples 400
set xlabel "r/a_0" font ",20"
set ylabel "Radial distribution function" font ",20"

set key font ",20"
set key at 18,0.5

set xrange[0:25]


RDF1s(x) = 4*x**2*exp(-2*x)
RDF2s(x) = x**2*(2-x)**2*exp(-x)/8
RDF3s(x) = 4*x**2*(27-18*x+2*x**2)**2*exp(-2*x/3)/(81**2*2)

plot RDF1s(x) w l lw 3 title "1s", RDF2s(x) w l lw 3 title "2s", RDF3s(x) w l lw 3 title "3s"
