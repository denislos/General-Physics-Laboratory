set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "I_m, А"
set ylabel "B, мТл"
set grid

linear_function(x) = a * x
fit linear_function(x) "data1.dat" via a

plot "data1.dat" title "", linear_function(x) title ""


