set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "V, В"
set ylabel "I_a * 10^{-7}, А"
set grid

plot "data1.dat" using ($1):($2 * 10**(7)) title "" with points lt rgb "red"
