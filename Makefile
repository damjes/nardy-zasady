.DEFAULT_GOAL := all
.PHONY: all clean

all: nardy-a5.pdf nardy-kindle.pdf

nardy-%.pdf: nardy-%.typ schematy.pdf version.typ
	typst compile --deps $@.d --deps-format make $< $@

schematy.pdf: schematy.drawio
	drawio $< -xa --crop -o $@

version.typ: version.sh .git/HEAD .git/refs
	./$< > $@

clean:
	rm -f *.pdf *.d version.typ

-include nardy-a5.pdf.d
-include nardy-kindle.pdf.d
