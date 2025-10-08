set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'OxOOH.pdf'

set title 'Correlation between {/Symbol D}E_{*O} and {/Symbol D}E_{*OOH}' font 'Arial,20'

set xlabel '{/Symbol D}E_{*O} (eV)'
set ylabel '{/Symbol D}E_{*OOH} (eV)'

set xrange [-2.0:4.0]
set yrange [1:6.5]

datafile = 'OxOOH.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.4, 0.3 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#009999" title 'Data Points', \
     f(x) with lines lc rgb "#99004c" lw 2 title 'Regression Line'
