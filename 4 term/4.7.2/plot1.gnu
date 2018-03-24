set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "m"
set ylabel "{r_m}^2, см^2"
set grid

linear_function(x) = a * x
fit linear_function(x) "data1.dat" using 1:2 via a

plot "data1.dat" using 1:2:3 title "" with yerrorbars, linear_function(x) title ""
