set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'HxOH.pdf'

set title 'Correlation between {/Symbol D}E_{*H} and {/Symbol D}E_{*OH}' font 'Arial,20'

set xlabel '{/Symbol D}E_{*H} (eV)'
set ylabel '{/Symbol D}E_{*OH} (eV)'

set xrange [-3.0:10.0]
set yrange [-3.0:20.0]

datafile = 'HxOH.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.95, 0.9 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#800080" title 'Data Points', \
     f(x) with lines lc rgb "#00CED1" lw 2 title 'Regression Line'
