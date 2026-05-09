.DEFAULT_GOAL := all
.PHONY: all clean rebuild

FORMATS = a4 a5 a6 b5 kindle letter ukbookb usdigest ustrade
PDFS = $(FORMATS:%=pdf/nardy-%.pdf)
DEPS = $(FORMATS:%=tmp/deps-%.d)

all: $(PDFS)

pdf/nardy-%.pdf: formaty/%.typ tmp/schematy.pdf tmp/version.typ
	typst compile --root . --deps tmp/deps-$*.d --deps-format make $< $@

tmp/schematy.pdf: schematy.drawio
	drawio $< -xa --crop -o $@

tmp/version.typ: version.sh .git/HEAD .git/refs/*/*
	./$< > $@

clean:
	rm -f pdf/* tmp/*

rebuild: clean all

-include $(DEPS)
