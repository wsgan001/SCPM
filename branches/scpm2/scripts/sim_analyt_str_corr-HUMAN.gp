set term postscript eps 30 enhanced color
set style fill solid 1.00 border
set encoding iso_8859_1
set output "sim_analyt_str_corr-HUMAN.eps"
set xlabel "{/Symbol s}"
set ylabel "sim-{/Symbol e}_{exp} x 10^{-3}"
set y2label "max-{/Symbol e}_{exp} x 10^{-3}"
set xtic 200
set y2tic 50
set yrange [0:80]
set y2range [0:300]
set xrange [:]
set ytics nomirror
set key left top
plot "<awk '{print $1,$2*1000,$3*1000,$4*1000}' sim_analyt_str_corr-HUMAN.dat" using 1:2:3 title "sim-{/Symbol e}_{exp}" with errorbars pt 2 lc 1 axes x1y1, "<awk '{print $1,$2*1000,$3*1000,$4*1000}' sim_analyt_str_corr-HUMAN.dat" using 1:4 title "max-{/Symbol e}_{exp}" with points pt 7 lc 3 axes x1y2
