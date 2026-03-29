DRAWIO := nardy.drawio
GENDIR := obrazki-gen

DIAGRAMY := \
    1:poczatek \
    4:bicie_przed \
	5:bicie_po \
	6:duzo_pionow \
	7:dublowanie_rzutu \
	8:blokada_ruchu \
	9:wejscie \
	10:koncowka	\
	11:kosc_poczatek \
	12:kosc_w_grze

define diagram_rule
$(GENDIR)/$(word 2,$(subst :, ,$1)).pdf: $(DRAWIO) | $(GENDIR)
	drawio $(DRAWIO) -xp $(word 1,$(subst :, ,$1)) --crop -o $$@
endef

$(foreach d,$(DIAGRAMY),$(eval $(call diagram_rule,$d)))

$(GENDIR):
	mkdir -p $@

PDFY := $(foreach d,$(DIAGRAMY),$(GENDIR)/$(word 2,$(subst :, ,$d)).pdf)

.DEFAULT_GOAL := nardy.pdf

nardy.pdf: nardy.typ $(PDFY)
	typst compile --deps nardy.d --deps-format make nardy.typ nardy.pdf

-include nardy.d
