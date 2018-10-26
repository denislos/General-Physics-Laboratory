set terminal png enhanced font "Consolas, 9"
set output "plot3.png"

set xlabel "V, мм/с"
set ylabel "I, c^{-1}"
set grid

plot "data3.dat" title "" with points lt rgb "red" ps 1.5 linewidth 2
