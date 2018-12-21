set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "E, МэВ"
set ylabel "N канала"
set grid

lin_function(x) = a * x + b
fit lin_function(x) "data1.dat" using ($2):($1) via a,b

plot "data1.dat" using ($2):($1) title "" with points lt rgb "red" ps 1.5 linewidth 2, lin_function(x) title "" lt rgb "green"
