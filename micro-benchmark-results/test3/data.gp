set size ratio 0.5
set terminal postscript color enhanced
set output '/Users/sufeng/git/ML_AUDB/symbolic/test3/data.ps'
unset title
set tmargin -3
set bmargin -2
set rmargin 0
set lmargin 12
set border 3 front linetype -1 linewidth 1.000
set boxwidth 0.14
set style fill solid
set style line 1 lt 1 lc rgb "#85bcff" lw 5
set style line 2 lt 2 lc rgb "#b5001a" lw 5
set style line 3 lt 3 lc rgb "#00b200" lw 5
set style line 4 lt 3 lc rgb "magenta" lw 5
set style line 5 lt 3 lc rgb "#bd4c00" lw 5
set style line 6 lt 3 lc rgb "#00b200" lw 5
set style line 7 lt 3 lc rgb "#856ab0" lw 5
set style line 8 lt 3 lc rgb "#85bcff" lw 5
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault linetype 0 linewidth 3.000,  linetype 0 linewidth 1.000
set key nobox autotitles columnhead Left reverse left
set key font "Arial,26"
set key width 1
set key samplen 1
set key spacing 1
set key maxrows 2
set style histogram clustered gap 1 errorbars
set datafile missing '-'
set style data histograms
set xlabel font "Arial,34"
set xlabel "dimension"
set xlabel  offset character 0, -1, 0  norotate
set xtics border in scale 0,0 nomirror offset character 0.5, -0.5, 2
set xtics norangelimit font ",25"
set xtics   ()
set xrange [ -0.7 : 8.7]
set xtics scale 0 ("5" 0, "6" 1, "7" 2, "8" 3, "9" 4, "10" 5, "11" 6, "12" 7, "13" 8, "5" 0, "6" 1, "7" 2, "8" 3, "9" 4, "10" 5, "11" 6, "12" 7, "13" 8, "5" 0, "6" 1, "7" 2, "8" 3, "9" 4, "10" 5, "11" 6, "12" 7, "13" 8)
set ylabel "loss"
set ylabel font "Arial,30"
set ylabel offset character -3, 0, 0
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics font ",34"
set yrange [*:*]
plot '/Users/sufeng/git/ML_AUDB/symbolic/test3/data_1k.csv' using ($1-0.2):2:4:3:2 with candlesticks lt 1 lw 7 title '1k' whiskerbars,                 '/Users/sufeng/git/ML_AUDB/symbolic/test3/data_10k.csv' using 1:2:4:3:2 with candlesticks lt 2 lw 7 title '10k' whiskerbars,                 '/Users/sufeng/git/ML_AUDB/symbolic/test3/data_FP.csv' using ($1+0.2):2:4:3:2 with candlesticks lt 3 lw 7 title 'FP' whiskerbars,