set terminal postscript enhanced eps color
set output "sorbiteignfunc.eps"
reset
set samples 400
set xlabel "r/a_0" font ",20"
set ylabel "Radial distribution function" font ",20"

set key font ",20"
set key at 18,0.5

set xrange[0:10]

RWF1s(x) = exp(-x)/sqrt(pi)
RWF2s(x) = (2-x)*exp(-x/2)/(4*sqrt(2*pi))
RWF3s(x) = (27-18*x + 2*x**2)*exp(-x/3)/(81*sqrt(3*pi))


plot RWF1s(x) w l lw 3 title "1s", RWF2s(x) w l lw 3 title "2s", RWF3s(x) w l lw 3 title "3s"
