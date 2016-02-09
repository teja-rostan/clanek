n="rostan.tex"
o="rostan_20160209.tex"

d="diff_${n%.tex}"
nn=${n%.tex}


pdflatex $nn
pdflatex $nn
bibtex $nn
bibtex $nn
pdflatex $nn
pdflatex $nn
open $nn.pdf

latexdiff $o $n > $d.tex
pdflatex $d
pdflatex $d
bibtex $d
bibtex $d
pdflatex $d
pdflatex $d
#open $d.pdf

