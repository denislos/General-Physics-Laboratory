set ylabel "1 / (Theta)^2"
set xlabel "(R + Ro)^2, кОм^2"
set grid
set term wxt

set terminal png enhanced font "Consolas,9"
set output "plot1.png"

linear_function(x) = a * x + b 
fit linear_function(x) "data1.dat" via a, b

plot "data1.dat" using 1:2:3 title "" with yerrorbars, linear_function(x) title ""
