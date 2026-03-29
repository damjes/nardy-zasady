.DEFAULT_GOAL := nardy.pdf
.PHONY: clean

nardy.pdf: nardy.typ schematy.pdf
	typst compile --deps nardy.d --deps-format make nardy.typ nardy.pdf

schematy.pdf: schematy.drawio
	drawio schematy.drawio -x --crop -o schematy.pdf

clean:
	rm -f nardy.pdf schematy.pdf nardy.d

-include nardy.d
