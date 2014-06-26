set terminal svg size 640,480 fname 'Verdana' fsize 10
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './comparativa_metodos.svg'
set grid
set key box right bottom
set title '8or3cpb_Alpha0.01'
set yrange [:0.56] 
set xlabel 'Dimensión'
set ylabel 'Precisión'
set style line 1  lc rgb 'red' lt 1 lw 1.2
set style line 2  lc rgb 'blue' lt 1 lw 1.2
set style line 4  lc rgb 'green' lt 1 lw 1.2
set style line 8  lc rgb 'dark-violet' lt 1 lw 1.2
set style line 10  lc rgb 'orange' lt 1 lw 1.2
set style line 12  lc rgb 'cyan' lt 1 lw 1.2
set style line 100  lc rgb 'black' lt 1 lw 1.2

plot './comparativa_metodos.txt' using 1:2 with linespoints ls 1 title 'media', \
'' using 1:2:6 with yerrorbars  ls 1 notitle, \
'' using 1:3 with linespoints ls 2 title 'mediana', \
'' using 1:3:7 with yerrorbars  ls 2 notitle, \
'' using 1:4 with linespoints ls 4 title 'bootstrap', \
'' using 1:4:8 with yerrorbars  ls 4 notitle, \
'' using 1:5 with linespoints ls 8 title 'expon', \
'' using 1:5:9 with yerrorbars  ls 8 notitle, \
'' using 10:11 with lines ls 100 title 'NATIVE baseline', \
