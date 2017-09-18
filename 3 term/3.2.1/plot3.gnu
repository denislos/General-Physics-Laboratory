set ylabel "|psi| / PI, рад"
set xlabel "V / Vрез"
set grid

set terminal png enhanced font "Consolas,9"
set output "plot3.png"

plot "data3.dat" using ($1 / 760):2 title "" with points 
