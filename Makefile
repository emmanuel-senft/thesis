
TARGET=00_Thesis.tex

DOT=$(wildcard images/*.dot)
SVG=$(wildcard images/*.svg)

all: paper
	make bib
	make paper
	make paper


%.pdf: %.svg
	inkscape --export-pdf $(@) $(<)

%.aux: paper

%.svg: %.dot

	twopi -Tsvg -o$(@) $(<)

bib: $(TARGET:.tex=.aux)

	BSTINPUTS=:./sty bibtex $(TARGET:.tex=.aux)

paper: $(TARGET) $(SVG:.svg=.pdf) $(DOT:.dot=.pdf)

	TEXINPUTS=:./sty pdflatex $(TARGET)

clean:
	rm -f *.spl *.idx *.aux *.log *.snm *.out *.toc *.nav *intermediate *~ *.glo *.ist *.bbl *.blg $(SVG:.svg=.pdf) $(DOT:.dot=.svg) $(DOT:.dot=.pdf)

distclean: clean
	rm -f $(TARGET:.tex=.pdf)

