set datafile separator ','
set term pdfcairo font 'Arial,16' dl 0.3
set output 'desvio_OOH.pdf'

set title 'Distribution of Differences (MD - DFT) for {/Symbol D}E_{*OOH}' font 'Arial,20'
set xlabel 'Desvio (MD - DFT) {/Symbol D}E_{*OOH} (eV)'
set ylabel 'Frequência'

set style fill solid 0.5
set boxwidth 0.4086666666666666 absolute

bin(x,width) = width*floor(x/width)
set xrange [-13:-1]

set yrange [0:15]

set key off

plot 'desvio_OOH.csv' using (bin(column(1), 0.4086666666666666)):(1.0) smooth frequency with boxes lc rgb "#4CAF50" notitle
