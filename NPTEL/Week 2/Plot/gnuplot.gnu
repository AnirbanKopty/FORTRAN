reset

n=100 #number of intervals
max=3. #max value
min=-3. #min value
width=(max-min)/n #interval width

#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0

# Making the export to png
set term png
set output "histogram.png"

set xrange [min:max]
set yrange [0:]
#to put an empty boundary around the data inside an autoscaled graph.
set offset graph 0.05,0.05,0.05,0.0
set xtics min,(max-min)/5,max
set boxwidth width*0.9
set style fill solid 0.5 #fillstyle
set tics out nomirror
set xlabel "x"
set ylabel "Frequency"

#count and plot
plot "data.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"green" notitle
