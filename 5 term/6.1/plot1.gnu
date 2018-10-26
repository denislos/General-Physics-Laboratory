set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "V, В"
set ylabel "I, c^{-1}"
set grid

plot "data1.dat" title "" with points lt rgb "red" ps 1.5 linewidth 2
