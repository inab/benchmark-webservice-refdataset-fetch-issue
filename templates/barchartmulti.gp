set terminal png medium size 640,480
set output '<DVAR name="outfile">'
set ylabel "<DVAR name="ylabel">" 1,0 
set xrange [0.4:<DVAR name="nSeries">.6]
set boxwidth .80 

set xtics nomirror rotate (<DVAR name="xtics"> )
set format y "%3.2f"
unset border
unset key

#series below
plot \
<DLOOP name="series"> \
    '<DVAR name="datafile">' index <DLVAR name="index"> using 1:2 \
        notit w boxes fill solid ls <DLVAR name="style">, \
    '<DVAR name="datafile">' index <DLVAR name="index"> using 1:2:3 \
        notit w yerrorbars lt -1 pt -1, \
</DLOOP> \
      f(x) = 0
