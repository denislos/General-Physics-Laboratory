set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "V, мм/с"
set ylabel "I, c^{-1}"
set grid

plot "data2.dat" title "" with points lt rgb "red" ps 1.5 linewidth 2
