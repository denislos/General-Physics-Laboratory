set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "1 / E_i, (МэВ)^{-1}"
set ylabel "R_i^2"
set grid

lin_function(x) = a * x
fit lin_function(x) "data2.dat" using (1 / $1):($2**2) via a

plot "data2.dat" using (1 / $1):($2**2) title "" with points lt rgb "purple" ps 1.5 linewidth 2
