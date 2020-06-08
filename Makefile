#requirements:
# texlive-base texlive-latex-recommended texlive latexmk
DEPORTPDF=deportation.pdf

all: $(DEPORTPDF)

$(DEPORTPDF): deportation.tex
	latexmk -pdf $<

clean:
	rm deportation.log deportation.aux deportation.fls deportation.fdb_latexmk
