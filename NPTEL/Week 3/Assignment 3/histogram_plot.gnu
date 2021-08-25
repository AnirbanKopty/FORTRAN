reset

set xlabel "Data points"
set ylabel "Frequency"
set title "Histogram of data"

binwidth=10

# Function defition
bin(x,width)=width*floor(x/width) + width/2.0
# bin(x, width) = width*(floor((x-Min)/width)+0.5) + Min

set boxwidth binwidth*0.9
set style fill solid 0.5
set yrange [0:]

set terminal png
set output "histogram.png"

plot 'histogram.dat' using (bin($1,binwidth)):(1.0) smooth freq with boxes notitle

# `smooth freq` does the job of counting