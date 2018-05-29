set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "\Delta P, мм H20"
set ylabel "z, мм"
set grid

linear_function(x) = a * x + b
fit linear_function(x) "data2.dat" using ($2):($1) via a,b

plot "data2.dat" using ($2):($1):(25):(0.01) title "" with xyerrorbars, linear_function(x) title ""
