set ylabel "lmax, см"
set xlabel "1 / (R + Ro) * 10^{-5}, Ом^{-1}"
set grid
set term wxt

set terminal png enhanced font "Consolas,9"
set output "plot2.png"

linear_function(x) = a*x + b
fit linear_function(x) "data2.dat" via a, b 

plot "data2.dat" using 1:2:(0.1) title "" with yerrorbars, linear_function(x) title "" 

