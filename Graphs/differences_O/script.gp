set datafile separator ','
set term pdfcairo font 'Arial,16' dl 0.3
set output 'desvio_O.pdf'

set title 'Distribution of Differences (MD - DFT) for {/Symbol D}E_{*O}' font 'Arial,20'
set xlabel 'Difference (MD - DFT) {/Symbol D}E_{*O} (eV)'
set ylabel 'Frequency'

set style fill solid 0.5
set boxwidth 0.4086666666666666 absolute

bin(x,width) = width*floor(x/width)
set xrange [-9.268666666666666:1.758666666666666]

set key off

plot 'desvio_O.csv' using (bin(column(1), 0.4086666666666666)):(1.0) smooth frequency with boxes lc rgb "#4CAF50" notitle
