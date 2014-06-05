set terminal svg size 640,480 fname 'Verdana' fsize 10
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './comparativa_metodos.svg'
set grid
set key box right bottom
set title 'Comparativa métodos para sintéticas'
set xlabel 'IPC'
set ylabel 'Accuracy'
plot './comparativa_metodos.txt' using 1:2 with linespoints title 'media', \
'' using 1:3 with linespoints title 'median', \
'' using 1:4 with linespoints title 'expon', \
'' using 1:5 with linespoints title 'bootstrap', \
'' using 6:7 with lines title 'baseline', \
