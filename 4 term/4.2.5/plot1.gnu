set terminal png  enhanced font "Consolas,9"
set output "plot1.png"

set yrange [0:1.8]
set xlabel "1 / d, 1 / мм"
set ylabel "q, мм"
set grid

lin_func(x) = a * x
fit lin_func(x) "data1.dat" using (1 / $1):2 via a

plot "data1.dat" using (1 / $1):2:4:3 title "" with xyerrorbars, lin_func(x) title ""
