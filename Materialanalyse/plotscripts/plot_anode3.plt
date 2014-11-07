set term epslatex color size 5,3

set output './plots/anode3.tex'

set title 'Gemessene Z\"ahlrate für unterschiedliche Winkel bei Bragg-Beugung'

unset key

set xrange [*:*]
set xlabel 'Glanzwinkel $\theta$ / \si{\degree}'
set yrange [*:*]
set ylabel 'Z\"ahlrate / \si{\per\second}'

set grid

plot "./messdaten/anode3.txt" using 1:2:(0.05):($2)*0.05 with xyerrorbars t'Messwerte', "./messdaten/anode3.txt" using 1:2 with lines lt 1 lc 1

unset output