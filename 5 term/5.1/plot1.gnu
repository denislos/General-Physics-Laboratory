set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "l, cм"
set ylabel "ln(N_0 / N)"
set grid
set key left top

lin_fun_1(x) = a_1 * x
lin_fun_2(x) = a_2 * x
lin_fun_3(x) = a_3 * x

fit lin_fun_1(x) "data1.dat" via a_1
fit lin_fun_2(x) "data2.dat" via a_2
fit lin_fun_3(x) "data3.dat" via a_3

plot "data1.dat" using ($1):($2):($4):($3) title "" with xyerrorbars lt rgb "blue" linewidth 1, lin_fun_1(x) title "Железо" lt rgb "blue" linewidth 1, \
     "data2.dat" using ($1):($2):($4):($3) title "" with xyerrorbars lt rgb "green" linewidth 1, lin_fun_2(x) title "Алюминий" lt rgb "green" linewidth 1, \
     "data3.dat" using ($1):($2):($4):($3) title "" with xyerrorbars lt rgb "yellow" linewidth 1, lin_fun_3(x) title "Свинец" lt rgb "yellow" linewidth 1
