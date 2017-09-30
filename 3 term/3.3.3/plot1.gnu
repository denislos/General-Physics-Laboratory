set xlabel "k"
set ylabel "q * 10^{-10} ед. СГСЭ"
set grid

set terminal png enhanced font "Consolas,9"
set output "plot1.png"

linear_function(x) = a*x
fit linear_function(x) "data1.dat" via a



plot "data1.dat" title "" with points linecolor rgb "red", linear_function(x) title ""
