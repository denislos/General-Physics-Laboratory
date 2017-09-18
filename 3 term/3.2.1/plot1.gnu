set xlabel "1 / (omega * C * Rs)"
set ylabel "tg(psi)"
set grid

set terminal png enhanced font "Consolas,9"
set output "plot1.png"

linear_function(x) = a*x+b
fit linear_function(x) "data1.dat" via a, b



plot "data1.dat" using 1:2:3 title "" with yerrorbars, linear_function(x) title "Эксперимент" lt rgb "red" ,\
     "data1.dat" using 1:1 title "Теория" lt rgb "green" smooth bezier with lines
