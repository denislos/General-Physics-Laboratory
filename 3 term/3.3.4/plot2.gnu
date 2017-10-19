set terminal png enhanced font "Consolas, 9"
set output "plot2.png"
set fit logfile "fit_logfile.log"


set xlabel "B, мТл"
set ylabel "E_x, мкВ"
set grid
set key left bottom

linear_function1(x) = a * x
fit linear_function1(x) "dataI0.25.dat" using ($1 * 915) : 2 via a
linear_function2(x) = b * x 
fit linear_function2(x) "dataI0.4.dat" using ($1 * 915) : 2 via b
linear_function3(x) = c * x
fit linear_function3(x) "dataI0.5.dat" using ($1 * 915) : 2 via c
linear_function4(x) = d * x
fit linear_function4(x) "dataI0.6.dat" using ($1 * 915) : 2 via d
linear_function5(x) = e * x
fit linear_function5(x) "dataI0.7.dat" using ($1 * 915) : 2 via e
linear_function6(x) = f * x
fit linear_function6(x) "dataI0.8.dat" using ($1 * 915) : 2 via f
linear_function7(x) = g * x
fit linear_function7(x) "dataI0.9.dat" using ($1 * 915) : 2 via g
linear_function8(x) = h * x
fit linear_function8(x) "dataI1.0.dat" using ($1 * 915) : 2 via h


plot    "dataI0.25.dat" using ($1 * 915) : 2 : ($1 * 915) * 0.02 title "" lt rgb "black" with xerrorbars, linear_function1(x) title "I = 0.25 mA" lt rgb "black", \
        "dataI0.4.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "purple" with xerrorbars, linear_function2(x) title "I = 0.4 mA" lt rgb "purple", \
        "dataI0.5.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "orange" with xerrorbars, linear_function3(x) title "I = 0.5 mA" lt rgb "orange", \
	"dataI0.6.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "red" with xerrorbars, linear_function4(x) title "I = 0.6 mA" lt rgb "red", \
	"dataI0.7.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "yellow" with xerrorbars, linear_function5(x) title "I = 0.7 mA" lt rgb "yellow", \
	"dataI0.8.dat"using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "blue" with xerrorbars, linear_function6(x) title "I = 0.8 mA" lt rgb "blue", \
	"dataI0.9.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "green" with xerrorbars, linear_function7(x) title "I = 0.9 mA" lt rgb "green", \
	"dataI1.0.dat" using ($1 * 915) : 2: ($1 * 915) * 0.02  title "" lt rgb "brown" with xerrorbars, linear_function8(x) title "I = 1.0 mA" lt rgb "brown"

