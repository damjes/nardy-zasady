.DEFAULT_GOAL := all
.PHONY: all clean rebuild

FORMATY = a4 a5 a6 b5 kindle letter ukbookb usdigest ustrade
PDFY = $(FORMATY:%=pdf/nardy-%.pdf)
ZALEZNOSCI = $(FORMATY:%=tmp/deps-%.d)

KATALOGI_WYJSCIOWE = pdf tmp

all: $(PDFY)

pdf/nardy-%.pdf: formaty/%.typ tmp/schematy.pdf tmp/wersja.typ pdf
	typst compile --root . --deps tmp/deps-$*.d --deps-format make $< $@

tmp/schematy.pdf: schematy.drawio tmp
	drawio $< -xa --crop -o $@

tmp/wersja.typ: wersja.sh .git/HEAD .git/refs/*/* tmp
	./$< > $@

$(KATALOGI_WYJSCIOWE):
	mkdir -p $@

clean:
	rm -rf $(KATALOGI_WYJSCIOWE)

rebuild: clean all

-include $(ZALEZNOSCI)
