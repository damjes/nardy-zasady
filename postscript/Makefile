.DEFAULT_GOAL := all

OBRAZKI = $(wildcard obrazki/*.ps)

GS_OPTS = --permit-file-read='biblioteka/*.ps'
GS = gs

.PHONY: all clean

all: $(OBRAZKI:obrazki/%.ps=out/%.pdf)

out/%.pdf: obrazki/%.ps out
	$(GS) $(GS_OPTS) -o $@ -sDEVICE=pdfwrite $<

clean:
	rm -rf ./out

out:
	mkdir -p out

rebuild: clean all

${OBRAZKI}: biblioteka/biblioteka.ps

biblioteka/biblioteka.ps: biblioteka/wymiary.ps
