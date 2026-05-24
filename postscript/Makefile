.DEFAULT_GOAL := all

OBRAZKI = $(wildcard obrazki/*.ps)
BIBLIOTEKA = $(wildcard biblioteka/*.ps)

GS_OPTS = --permit-file-read='biblioteka/*.ps'
GS = gs

.PHONY: all clean

all: $(OBRAZKI:obrazki/%.ps=out/%.pdf)
	echo $(OBRAZKI)

out/%.pdf: obrazki/%.ps out
	$(GS) $(GS_OPTS) -o $@ -sDEVICE=pdfwrite $<

clean:
	rm -rf ./out

out:
	mkdir -p out

rebuild: clean all

$(OBRAZKI): $(BIBLIOTEKA)
