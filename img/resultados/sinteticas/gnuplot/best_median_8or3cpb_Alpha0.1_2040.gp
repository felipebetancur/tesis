set terminal svg size 640,480 fname 'Verdana' fsize 10
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './best_median_8or3cpb_Alpha0,1_2040.svg'
set grid
set key box right bottom
set title '8or3cpb_Alpha0.1_2040'
set xlabel 'IPC'
set ylabel 'Accuracy'
plot './best_median_8or3cpb_Alpha0.1_2040.txt' using 1:2 with linespoints title '1', \
'' using 1:3 with linespoints title '2', \
'' using 1:4 with linespoints title '4', \
'' using 1:5 with linespoints title '8', \
'' using 1:6 with linespoints title '10', \
'' using 1:7 with linespoints title '12', \
'' using 8:9 with lines title 'baseline', \
