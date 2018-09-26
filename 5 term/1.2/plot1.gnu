set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "1 - cos(Theta)"
set ylabel "1 / N(Theta) * 10^{-3}"
set grid
set angles degrees

linear_function(x) = a * x + b
fit linear_function(x) "data1.dat" using (1 - cos($1)):(1 / ($2) * 10**3) via a,b

plot "data1.dat" using (1 - cos($1)):(1 / $2 * 10**3) title "" with points lt rgb "red" ps 1.5, linear_function(x) title "" lt rgb "green"
