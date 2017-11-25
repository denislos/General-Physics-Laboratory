set terminal png enhanced font "Consolas,9"
set output "plot1.png"

set ylabel "1 / (t^2 - t_0^2), 1 / мкс^2"
set xlabel "T, град. Цельсия"
set grid
set key left top

linear_function(x) = a*x + b
fit linear_function(x) "data2.dat" via a,b

plot "data1.dat" using 1:2 title "Нагревание" with lines lt rgb "red", "data1.dat" using 1:2:3 title "" with xerrorbars lt rgb "red",\
     "data3.dat" using 1:2 title "Охлаждение" with lines lt rgb "blue", "data3.dat"using 1:2:3 title "" with xerrorbars lt rgb "blue"
