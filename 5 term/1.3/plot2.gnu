set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "V, В"
set ylabel "I_a * 10^{-7}, А"
set grid

plot "data2.dat" using ($1):($2) title "" with points lt rgb "red"
