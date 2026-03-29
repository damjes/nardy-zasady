DRAWIO := schematy.drawio
SCHEMATY := schematy.pdf

.DEFAULT_GOAL := nardy.pdf
.PHONY: clean

nardy.pdf: nardy.typ $(SCHEMATY)
	typst compile --deps nardy.d --deps-format make nardy.typ nardy.pdf

$(SCHEMATY): $(DRAWIO)
	drawio $(DRAWIO) -x --crop -o $@

clean:
	rm -f nardy.pdf $(SCHEMATY) nardy.d

-include nardy.d
