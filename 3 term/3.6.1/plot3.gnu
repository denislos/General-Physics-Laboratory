set terminal png enhanced font "Consolas, 9"
set output "plot3.png"

set xlabel "m"
set ylabel "a_{бок} / a_{осн}"
set grid

linear_function(x) = a * x
fit linear_function(x) "data3.dat" using ($3):($2 / $1) via a

plot "data3.dat" using ($3):($2 / $1) title "", linear_function(x) title ""
