.DEFAULT_GOAL := plansza.svg
.PHONY: indent

%.svg: %.m4 biblioteka.m4
	m4 $< | grep -v "^[[:space:]]*$$" > $@

plansza-indent.svg: plansza.svg
	xmlstarlet fo --indent-tab $< > $@