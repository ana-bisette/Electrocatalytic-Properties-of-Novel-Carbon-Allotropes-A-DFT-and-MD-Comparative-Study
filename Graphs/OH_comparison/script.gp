set datafile separator ','
set term pdfcairo font ' ,16' dl 0.3
set output 'OH_comparison.pdf'

set title 'Correlation between {/Symbol D}E_{*OH} MD and {/Symbol D}E_{*OH} DFT' font 'Arial,20'

set xlabel '{/Symbol D}E_{*OH} MD (eV)'
set ylabel '{/Symbol D}E_{*OH} DFT (eV)'

set xrange [-6:2.5]
set yrange [-2:4.0]

datafile = 'OH_comparison.csv'

f(x) = a*x + b
fit f(x) datafile using 1:2 via a, b

set key at graph 0.42, 0.9 font 'Arial,16' samplen 1.5

plot datafile using 1:2 with points pt 7 ps 0.7 lc rgb "#006400" title 'Data Points', \
     f(x) with lines lc rgb "#97bc62" lw 2 title 'Regression Line'
