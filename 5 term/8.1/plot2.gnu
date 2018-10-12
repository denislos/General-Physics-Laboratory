set terminal png enhanced font "Consolas, 9"
set output "plot2.png"

set xlabel "ln(T)"
set ylabel "ln(W)"
set grid

linear_function(x) = a * x + b
fit linear_function(x) "data2.dat" using (log($1)):(log($2)) via a,b

plot "data2.dat" using (log($1)):(log($2)) title "" with points lt rgb "orange" ps 2, linear_function(x) title "" lt rgb "red"
