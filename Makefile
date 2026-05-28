# Makefile for LaTeX thesis

MAIN = Tesi
LATEXMK = latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode"

# List all relevant source files to ensure 'make' detects changes
SOURCES = $(MAIN).tex \
          $(wildcard chapters/*.tex) \
          $(wildcard config/*.tex) \
          $(wildcard frontmatter/*.tex) \
          biblio.bib

all: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES)
	$(LATEXMK) $(MAIN).tex

clean:
	$(LATEXMK) -c

distclean:
	$(LATEXMK) -C
	rm -f *.pdf

.PHONY: all clean distclean
