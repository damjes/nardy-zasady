.DEFAULT_GOAL := all
.PHONY: all clean

all: nardy-a5.pdf nardy-kindle.pdf

%.pdf: %.typ schematy.pdf
	typst compile --deps $@.d --deps-format make $< $@

schematy.pdf: schematy.drawio
	drawio schematy.drawio -xa --crop -o schematy.pdf

clean:
	rm -f *.pdf *.d

-include nardy-a5.pdf.d
-include nardy-kindle.pdf.d
