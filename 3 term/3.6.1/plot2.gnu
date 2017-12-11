set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "f_{повт}, кГц"
set ylabel "{/Symbol d}{/Symbol n}, кГц"
set grid

linear_function(x) = a * x
fit linear_function(x) "data2.dat" via a

plot "data2.dat" title "", linear_function(x) title ""
