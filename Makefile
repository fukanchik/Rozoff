#requirements:
# texlive-base texlive-latex-recommended texlive latexmk
DEPORTPDF=deportation.pdf
COVER=cover.pdf

all: $(DEPORTPDF) $(COVER)

$(DEPORTPDF): deportation.tex russian.tex
	latexmk -pdf $<

$(COVER): cover.tex
	latexmk -pdf $<

check:
	lacheck *.tex
	chktex *.tex
clean:
	rm deportation.log deportation.aux deportation.fls deportation.fdb_latexmk \
		cover.log cover.aux cover.fls cover.fdb_latexmk russian.aux deportation.toc deportation.pdf cover.pdf
