#set document(
	title: "Oficjalne Damjesowe zasady gry w nardy",
	author: "wiel. Damjes",
)

#set page(
	paper: "a5",
	numbering: none,
)

#set text(
	font: "Libertinus Serif",
	size: 11pt,
	lang: "pl",
	hyphenate: true,
)

#show raw: set text(font: "IosevkaTermSlab NFP")

#set par(
	justify: true,
	spacing: 0.7em,
	first-line-indent: (
		amount: 1.5em,
		all: true,
	)
)

#set heading(
	numbering: "1.1.",
)

#show ref: it => {
  let el = it.element
  link(el.location(), numbering(el.numbering, ..counter(heading).at(el.location())) + " " + el.body)
}

#import "functions.typ": *

// ─── Strona tytułowa ───
#v(2em)
#align(center)[
	#set par(justify: false)
	#text(size: 26pt, weight: "bold", hyphenate: false)[Oficjalne Damjesowe zasady gry w~nardy]
	#v(0.2em)
	*(znane też~jako backgammon, tryktrak, tabla, tavli, tavla...)*
	#v(0.6em)
	#text(size: 12pt, style: "italic")[wiel. Damjes]
]

#figure(image("obrazki/Codex_Manesse_262v_Herr_Goeli.jpg", width: 50%), placement: bottom)

#pagebreak(to: "odd")

// --- Treść dokumentu ---
#set page(numbering: "1")

#outline()

#pagebreak(to: "odd")

#include "rozdzialy/wstep.typ"

#include "rozdzialy/wyposazenie.typ"

#include "rozdzialy/budowa-planszy.typ"

#include "rozdzialy/cel-gry.typ"

#include "rozdzialy/zasady-poruszania-pionow.typ"

#include "rozdzialy/rzut-koscmi.typ"

#include "rozdzialy/punktacja.typ"

#include "rozdzialy/zegar.typ"

#include "rozdzialy/notacja.typ"

#include "rozdzialy/faq.typ"

#include "rozdzialy/kreditsy.typ"

// --- Tył ---

#set page(numbering: none)

#pagebreak(to: "odd")

// pusta strona okładki

#pagebreak()

#align(center + bottom)[
	copyleft #sym.copyleft 2025-2026

	under DamjesaP 2.1

	by wiel. Damjes
]
