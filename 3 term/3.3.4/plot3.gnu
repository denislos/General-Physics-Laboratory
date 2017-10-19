set terminal png enhanced font "Consolas, 9"
set output "plot3.png"

set xlabel "I, A"
set ylabel "k"
set grid

linear_function(x) = a * x
fit linear_function(x) "data2.dat" using 2:1 via a

plot "data2.dat" using 2:1:3 title "" with yerrorbars, linear_function(x) title ""
