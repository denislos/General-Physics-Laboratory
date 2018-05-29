set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "1 / D, м^(-1)"
set ylabel "d, мкм"
set grid

linear_function(x) = a * x
fit linear_function(x) "data1.dat" using (1 / $2):($1) via a

plot "data1.dat" using (1 / $2):($1):(0.01 / $2):(0.01 * $1) title "" with xyerrorbars, linear_function(x) title ""
