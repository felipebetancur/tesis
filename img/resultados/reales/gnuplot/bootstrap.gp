set terminal svg size 640,480 fname 'Verdana' fsize 14
set termoption dashed
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './bootstrap.svg'
set grid
set key box right bottom
set yrange [:0.56] 
set xlabel 'Dimensión'
set ylabel 'Precisión'
set style line 1  lc rgb 'red' lt 1 lw 1.2
set style line 2  lc rgb 'blue' lt 3 lw 1.2
set style line 4  lc rgb 'green' lt 2 lw 1.2
set style line 8  lc rgb 'dark-violet' lt 4 lw 1.2
set style line 10  lc rgb 'orange' lt 5 lw 1.2
set style line 12  lc rgb 'cyan' lt 6 lw 1.2
set style line 100 lc rgb 'black' pt 3   # star

plot './bootstrap.txt' using 1:2 with linespoints ls 1 title 'B/G=1', \
'' using 1:2:9 with yerrorbars  ls 1 notitle, \
'' using 1:4 with linespoints ls 4 title 'B/G=4', \
'' using 1:4:11 with yerrorbars  ls 4 notitle, \
'' using 1:5 with linespoints ls 8 title 'B/G=8', \
'' using 1:5:12 with yerrorbars  ls 8 notitle, \
'' using 1:6 with linespoints ls 10 title 'B/G=10', \
'' using 1:6:13 with yerrorbars  ls 10 notitle, \
"<echo '1536 0.50'" with points ls 100 title 'baseline', \
