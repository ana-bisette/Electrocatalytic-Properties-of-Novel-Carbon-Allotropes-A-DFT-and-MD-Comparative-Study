set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'OHxOOH.pdf'

set title 'Correlation between {/Symbol D}E_{*OH} and {/Symbol D}E_{*OOH}' font 'Arial,20'

set xlabel '{/Symbol D}E_{*OH} (eV)'
set ylabel '{/Symbol D}E_{*OOH} (eV)'

set xrange [-2.0:5.0]
set yrange [0.0:10.0]

datafile = 'OHxOOH.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.4, 0.9 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#ff6b6b" title 'Data Points', \
     f(x) with lines lc rgb "#4c2882" lw 2 title 'Regression Line'
