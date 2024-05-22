set size ratio 0.5
set terminal postscript color enhanced
set output '/Users/sufeng/git/ML_AUDB/symbolic/test2/data.ps'
unset title
set tmargin -3
set bmargin -2
set rmargin 0
set lmargin 12
set border 3 front linetype -1 linewidth 1.000
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
set xlabel "range multiplier"
set xlabel  offset character 0, -1, 0  norotate
set xtics border in scale 0,0 nomirror offset character 0.5, -0.5, 2 autojustify
set xtics norangelimit font ",24"
set xtics   ()
set ylabel "loss"
set ylabel font "Arial,30"
set ylabel offset character -3, 0, 0
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics font ",34"
set style fill solid border rgb "black"
set yrange [0:*]
plot '/Users/sufeng/git/ML_AUDB/symbolic/test2/data_1k.csv' using 2:3:4:xtic(1) title '1k', '/Users/sufeng/git/ML_AUDB/symbolic/test2/data_10k.csv' using 2:3:4:xtic(1) title '10k', '/Users/sufeng/git/ML_AUDB/symbolic/test2/data_FP.csv' using 2:3:4:xtic(1) title 'FP'