set terminal svg size 640,480 fname 'Verdana' fsize 10
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './expon_8or3cpb_Alpha0,01.svg'
set grid
set key box right bottom
set title '8or3cpb_Alpha0.01'
set xlabel 'Dimension'
set ylabel 'Accuracy'
plot './expon_8or3cpb_Alpha0.01.txt' using 1:2 with linespoints title '1', \
'' using 1:3 with linespoints title '2', \
'' using 1:4 with linespoints title '4', \
'' using 1:5 with linespoints title '8', \
'' using 6:7 with lines title 'baseline', \
