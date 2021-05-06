set terminal postscript enhanced eps color
set output "tst-fig.eps"


set yrange[00:5]
set xrange[-8:8]
f(x) = 2 + 1*cos(x)

set noxtics
set noytics
set ylabel "potential energy U" font ",20"
set xlabel "distance"
plot f(x) w l lw 3 lc rgb "black" notitle
