#/bin/env sh
pdflatex --output-directory=tmp LA.tex
cd tmp
bibtex LA.aux
cd ..
pdflatex --output-directory=tmp LA.tex
pdflatex --output-directory=tmp LA.tex
