src = paper_writing_tips
#default language: English, compile with pdflatex 
pdf:
	pdflatex $(src).tex
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
clean:
	rm -f *.aux *.log *.blg *.dvi *.nav *.out *.snm *.toc *.brf
