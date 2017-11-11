set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "f / f_0"
set yrange [0.6 : 1]
set ylabel "U / U_0"
set grid
set key right top

plot "data1.dat" using ($1 / 1550):($2 / 9.02) title ""  lt rgb "red", \
     "data1.dat" using ($1 / 1550) : ($2 / 9.02) title "R = 0 Ом" smooth csplines lt rgb "red", \
     "data2.dat" using ($1 / 1550): ($2 / 2.22) title ""  lt rgb "green", \
     "data2.dat" using ($1 / 1550) : ($2 / 2.22) title "R = 100 Ом" smooth csplines lt rgb "green"
