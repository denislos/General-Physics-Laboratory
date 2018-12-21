set terminal png enhanced font "Consolas, 9"
set output "plot3.png"

set xlabel "E_i, МэВ"
set ylabel "E обр, МэВ"
set grid

plot "data3.dat" using ($1):(($1) / (1 + 2 * ($1) / 0.511)) title "" with points lt rgb "orange" ps 1.5 linewidth 2
