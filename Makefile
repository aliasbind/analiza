FILE=main
TEXFILE=$(FILE).tex
PDFFILE=$(FILE).pdf

all:
	pdflatex $(TEXFILE)
	bibtex $(FILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)

clean:
	$(RM) *.pdf *.log *.aux *.bbl *.toc *.blg
