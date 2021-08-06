# GNUPlot Guideline

## Directory Navigation

Usual terminal commands like `cd`, `pwd`

## Plotting Basics

### SYNTAX: 
```
plot 'filename.dat' <parameters>
```
where this `'filename.dat'` contains x data in column 1, y data in column 2.

### parameters:
This datafeeding order can also be changed by `using 1:2` (by default) parameter

> To add error bars from given data, use `with errorbars`, this by default considers 3rd column as the error for the data  
> To manipulate the data, we can exploit `using 1:2:3` parameter, like, for ex, to make the error scaled by /1000, we do `using 1:2:($3/1000)`

To set a title to the plot (this is more like legends, called "key" here in GNUplot)
`title "Title Name"`

To change the linetype and linecolor, use
`linetype <num> linecolor <num>`

> To see the whole list of available options, try `test` command separately

To connect the dots, use `with linespoints`, and to only show the connected lines, not the dots, use `with lines`  
The default is `with points` (which shows the points only)

> We can use multiple plots in the same figure by using comma ','  
> ```
> plot 'data1.dat' <data1_params>, 'data2.dat'  <data2_params>, <analytic functions> <func_params>
> ```

> Also, we can shorten the commands by using only initials  
> `plot "data.dat" title "TitleName" linetype 7 linecolor 0 with linespoints`  
> is the same as  
> `plot "data.dat" t "TitleName" lt 7 lc 0 w lp`

### Commands

To change the x or yrange, use `set xrange [a:b]`

TO set x or ylabel, use `set ylabel "velocity"`

To set grids, use `set grid`

> After fiddling with the graphing, to redraw, use `replot`

> Tip: Use `help <command>` to get insight of the command


<br>

- Source : [gnuplot Tutorial 1: basic Plotting tips & tricks, errorbars, png output](https://www.youtube.com/watch?v=9QUtcfyBFhE)