.DEFAULT_GOAL := all
.PHONY: all clean rebuild

FORMATS = a4 a5 a6 b5 kindle letter ukbookb usdigest ustrade
PDFS = $(FORMATS:%=pdf/nardy-%.pdf)
DEPS = $(FORMATS:%=tmp/deps-%.d)

all: $(PDFS)

pdf/nardy-%.pdf: formaty/%.typ tmp/schematy.pdf tmp/wersja.typ pdf
	typst compile --root . --deps tmp/deps-$*.d --deps-format make $< $@

tmp/schematy.pdf: schematy.drawio tmp
	drawio $< -xa --crop -o $@

tmp/wersja.typ: wersja.sh .git/HEAD .git/refs/*/* tmp
	./$< > $@

pdf:
	mkdir -p $@

tmp:
	mkdir -p $@

clean:
	rm -rf pdf tmp

rebuild: clean all

-include $(DEPS)
