pdflatex comp_rafi.tex
pdflatex comp_rafi.tex
cd ./chapters
bibtex pseudoUranium.aux
bibtex xenontherm.aux
bibtex futurework.aux
cd ../appen
bibtex opw.aux
bibtex elastic_alphaU.aux
bibtex paw.aux
cd ../
bibtex comp_rafi.aux
pdflatex comp_rafi.tex
pdflatex comp_rafi.tex
