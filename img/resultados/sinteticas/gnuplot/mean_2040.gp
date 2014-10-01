set terminal svg size 640,480 fname 'Verdana' fsize 14
set termoption dashed
set object 1 rect from screen 0, 0, 0 to screen 1, 1, 0 behind
set object 1 rect fc  rgb 'white' fillstyle solid 1.0
set output './mean_2040.svg'
set grid
set key box right bottom
set yrange [:0.51] 
set xlabel 'IPC'
set ylabel 'Precisión'
set style line 1  lc rgb 'red' lt 1 lw 1.2
set style line 2  lc rgb 'blue' lt 3 lw 1.2
set style line 4  lc rgb 'green' lt 2 lw 1.2
set style line 8  lc rgb 'dark-violet' lt 4 lw 1.2
set style line 10  lc rgb 'orange' lt 5 lw 1.2
set style line 12  lc rgb 'cyan' lt 6 lw 1.2
set style line 100 lc rgb 'black' pt 3   # star
set style line 101  lc rgb 'red' lt 1 lw 1.2
set style line 102  lc rgb 'blue' lt 1 lw 1.2
set style line 104  lc rgb 'green' lt 1 lw 1.2
set style line 108  lc rgb 'dark-violet' lt 1 lw 1.2
set style line 110  lc rgb 'orange' lt 1 lw 1.2
set style line 112  lc rgb 'cyan' lt 1 lw 1.2

plot './mean_2040.txt' using 1:2 with linespoints ls 1 title 'B/G=1', \
'' using 1:2:9 with yerrorbars  ls 101 notitle, \
'' using 1:4 with linespoints ls 4 title 'B/G=4', \
'' using 1:4:11 with yerrorbars  ls 104 notitle, \
'' using 1:5 with linespoints ls 8 title 'B/G=8', \
'' using 1:5:12 with yerrorbars  ls 108 notitle, \
'' using 1:6 with linespoints ls 10 title 'B/G=10', \
'' using 1:6:13 with yerrorbars  ls 110 notitle, \
"<echo '1000 0.43'" with points ls 100 title 'baseline', \

