set terminal svg size 640,480 fname 'Verdana' fsize 10
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './comparativa_metodos.svg'
set grid
set key box right bottom
set title 'Comparación de Métodos'
set xlabel 'Dimension'
set ylabel 'Accuracy'
set yrange [0.3:0.55]
plot './comparativa_metodos.txt' using 1:2 with linespoints title 'media', \
'' using 1:3 with linespoints title 'mediana', \
'' using 1:4 with linespoints title 'bootstrap', \
'' using 1:5 with linespoints title 'exponencial', \
'' using 6:7 with lines title 'baseline', \
