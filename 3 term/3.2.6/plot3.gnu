set ylabel "I, нА"
set xlabel "x, мм"
set grid
set term wxt

set terminal png enhanced font "Consolas,9"
set output "plot3.png"

linear_function(x) = a*x + b
fit linear_function(x) "data3.dat" via a, b 

plot "data3.dat" using 1:2:(0.1) title "" with xerrorbars, linear_function(x) title "" 
