set datafile separator ','
set term pdfcairo font 'Arial,16' dl 0.3
set output 'desvio_H.pdf'

set title 'Distribution of Differences (MD - DFT) for {/Symbol D}E_{*H}' font 'Arial,20'
set xlabel 'Difference (MD - DFT) {/Symbol D}E_{*H} (eV)'
set ylabel 'Frequency'

set style fill solid 0.5
set boxwidth 0.4786666666666667 absolute 

bin(x,width) = width*floor(x/width)
set xrange [-5.638666666666666:2.598666666666666]

set key off

plot 'desvio_H.csv' using (bin(column(1), 0.4786666666666667)):(1.0) smooth frequency with boxes lc rgb "#4CAF50" notitle
