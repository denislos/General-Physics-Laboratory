set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "m"
set xrange [-4:4]
set ylabel "l_m, мм"
set grid

linear_function(x) = a * x
fit linear_function(x) "data1.dat" using 2:($1 * 0.004) via a

plot "data1.dat" using 2:($1 * 0.004):($3 * 0.004) title "" with yerrorbars, linear_function(x) title ""
