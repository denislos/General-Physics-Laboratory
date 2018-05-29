set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "m"
set ylabel "z_m, мм"
set grid

linear_function(x) = a * x + b
fit linear_function(x) "data1.dat" via a,b

plot "data1.dat" using ($1):($2):(0.01) title "" with yerrorbars, linear_function(x) title "
