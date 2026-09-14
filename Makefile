MAIN=main

.PHONY: all clean

all:
	xelatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	bibtex $(MAIN)
	xelatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	xelatex -interaction=nonstopmode -halt-on-error $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.xdv *.synctex.gz sections/*.aux
