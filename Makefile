.DEFAULT_GOAL := all
.PHONY: all clean

FORMATS = a4 a5 a6 b5 kindle letter ukbookb usdigest ustrade
PDFS = $(FORMATS:%=nardy-%.pdf)
DEPS = $(FORMATS:%=nardy-%.pdf.d)

all: $(PDFS)

nardy-%.pdf: nardy-%.typ schematy.pdf version.typ
	typst compile --deps $@.d --deps-format make $< $@

schematy.pdf: schematy.drawio
	drawio $< -xa --crop -o $@

version.typ: version.sh .git/HEAD .git/refs/*/*
	./$< > $@

clean:
	rm -f *.pdf *.d version.typ

-include $(DEPS)
