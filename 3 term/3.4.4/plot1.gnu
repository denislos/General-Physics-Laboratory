set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "H, А / м"
set ylabel "B, Тл"
set grid
set xzeroaxis
set yzeroaxis

plot "data1.dat" title "" with lines, "data1.dat" title "" with points lt rgb "red" ,\
     "data2.dat" title "" with lines, "data2.dat" title "" with points lt rgb "blue"
