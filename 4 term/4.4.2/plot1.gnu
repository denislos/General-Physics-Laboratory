set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "\lambda, нм"
set ylabel "sin \varphi - 1 / 2"
set grid

linear_function(x) = a * x + b
fit linear_function(x) "data1.dat" using ($2):($1) via a,b
plot "data1.dat" using ($2):($1) title "", linear_function(x) title "
