set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'OxOH.pdf'

set title 'Correlation between {/Symbol D}E_{*O} and {/Symbol D}E_{*OH}' font 'Arial,20'

set xlabel '{/Symbol D}E_{*O} (eV)'
set ylabel '{/Symbol D}E_{*OH} (eV)'

set xrange [-2.0:9.0]
set yrange [-2.5:6.0]

datafile = 'OxOH.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.95, 0.35 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#ffd733" title 'Data Points', \
     f(x) with lines lc rgb "#0000ff" lw 2 title 'Regression Line'
