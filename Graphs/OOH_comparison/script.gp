set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'OOH_comparison.pdf'

set title 'Correlation between {/Symbol D}E_{*OOH} MD and {/Symbol D}E_{*OOH} DFT' font 'Arial,20'

set xlabel '{/Symbol D}E_{*OOH} MD (eV)'
set ylabel '{/Symbol D}E_{*OOH} DFT (eV)'

set xrange [-5:3]
set yrange [-0.5:13]

datafile = 'OOH_comparison.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.42, 0.9 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#006400" title 'Data Points', \
     f(x) with lines lc rgb "#97bc62" lw 2 title 'Regression Line'
