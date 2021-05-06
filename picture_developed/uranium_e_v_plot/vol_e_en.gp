#set terminal postscript  enhanced eps color size 3.3 in, 3.3 in font "Times-New-Roman" 
set terminal pngcairo enhanced font "Times-New-Roman" size 700, 650
#set encoding iso_8859_1
#set encoding utf8
set nominussign


#set output "vol_en_u.eps"
set output "vol_en_u.png
set border linewidth 2.0
set ytics 0.03 font ",20" 
set xtics 40 font ",20"

set key at 210,0.02 font ",20"

#set yrange [0:0.1]
#set xrange [80:210]
set ylab "{/Symbol D}{/Italic-Times-New-Roman E} {(Ry/atom)}" font ",22" 
set xlab "{bohr^3/atom}" font ",22"

plot [80:210] [0:0.09] "alpha_sorted.dat" u 1:($2+1028.52) w p pt 6 ps 1.8 lw 2.5 lc rgb "black" title "{/Symbol a}{\055}U",\
					  "alpha_sorted.dat" u 1:($2+1028.52) w l smooth cspline lw 1.5 lc rgb "black" notitle,\
					  "gamma_sorted.dat" u 1:($2+1028.52) w p pt 4 ps 1.8 lw 2.5 lc rgb "black" title '{/Symbol g}-U',\
					  "gamma_sorted.dat" u 1:($2+1028.52) w l smooth cspline lw 1.5 lc rgb "black" notitle,\
					  "bct_sorted.dat" u 1:($2+1028.52) w p pt 9 ps 1.8 lw 2.5 lc rgb "black" title '{bct}-U',\
					  "bct_sorted.dat" u 1:($2+1028.52) w l smooth cspline lw 1.5 lc rgb "black" notitle
