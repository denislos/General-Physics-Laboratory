set xlabel "(omega * L) / Rs"
set ylabel "tg(psi)"
set grid

set terminal png enhanced font "Consolas,9"
set output "plot2.png"

linear_function(x) = a*x+b
fit linear_function(x) "data2.dat" via a, b



plot "data2.dat" using 1:2:3 title "" with yerrorbars, linear_function(x) title "Эксперимент" lt rgb "red" ,\
     "data2.dat" using 1:1 title "Теория" lt rgb "green" smooth bezier with lines
