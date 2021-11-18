#########################################################################
# File Name: Makefile
# Author: GoYchen
# mail: GoYchen@foxmail.com
# Created Time: Thu 05 Nov 2015 08:52:42 AM CST
#########################################################################

src = PaperForReview
#default language: English, compile with pdflatex 
pdf:
	pdflatex $(src).tex
#chinese compile with xelatex 
toc:
	pdflatex $(src).tex
	pdflatex $(src).tex
ch:
	xelatex $(src).tex
#open pdf
show:
	xdg-open $(src).pdf
mshow:
	open -a skim $(src).pdf
macshow:
	open $(src).pdf
# contain citation 
bib:
	pdflatex $(src).tex
	bibtex $(src).aux
	pdflatex $(src).tex
	pdflatex $(src).tex
#chinese article contain citation
chbib:
	xelatex $(src).tex
	bibtex $(src).aux
	xelatex $(src).tex
	xelatex $(src).tex
dvi:
	latex $(src).tex
	xdvi $(src).dvi
sup:
	pdflatex $(sup).tex
supshow:
	xdg-open $(sup).pdf
supbib:
	pdflatex $(sup).tex
	bibtex   $(sup).aux
	pdflatex $(sup).tex
	pdflatex $(sup).tex
concat:
	pdftk ${src}.pdf ${sup}.pdf cat output ${src}_sup.pdf
clean:
	rm -f *.aux *.log *.blg *.dvi *.nav *.out *.snm *.toc *.brf
