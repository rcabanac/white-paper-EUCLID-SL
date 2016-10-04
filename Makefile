NAME = main
PAPER = $(NAME).pdf
TEXFILE = $(NAME).tex
BIBFILE = references.bib

all: pdf

clean:
	-rm -f *.aux *.log *.dvi *.blg *.bbl *.inx *.aut *.toc *.out *Notes.bib

vclean: clean
	-rm -f $(PAPER)

pdf: $(PAPER)

$(PAPER): $(BIBFILE) $(TEXFILE)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)
	bibtex   $(NAME)
	pdflatex $(TEXFILE)
	pdflatex $(TEXFILE)
