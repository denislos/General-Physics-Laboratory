set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "T, градусов Цельсия"
set ylabel "W, Вт"
set grid

plot "data1.dat" title "" with points lt rgb "red" ps 1.5
