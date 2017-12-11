set terminal png enhanced font "Consolas, 9"
set output "plot1.png"

set xlabel "1 / t, Гц"
set ylabel "{/Symbol D}{/Symbol n}, Гц"
set grid

linear_function(x) = a * x
fit linear_function(x) "data1.dat" using (1 / $1 * 10**(6)):($2 * 10**(3))  via a

plot "data1.dat" using (1 / $1 * 10**(6)):($2 * 10**(3)) title "", linear_function(x) title ""
