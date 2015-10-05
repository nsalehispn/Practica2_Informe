all:
	latex informeCA.tex
	latex informeCA.tex
	bibtex informeCA
	latex informeCA.tex
	latex informeCA.tex
	dvips -o informeCA.ps informeCA.dvi
	ps2pdf -sPAPERSIZE=a4 -DMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true informeCA.ps informeCA.pdf

clean:
	rm -f *.toc *.ps *.log *.lof *.lot *.dvi *.aux *.blg *.bbl
