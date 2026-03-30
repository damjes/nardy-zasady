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

// Callout box definitions
#let callout_box(accent, bg, icon, title, body, sticky) = block(
	width: 100%,
	fill: bg,
	stroke: (left: 3pt + accent),
	radius: 3pt,
	inset: 12pt,
	above: 1em,
	below: 1em,
	sticky: sticky,
)[
	#block(sticky: true)[
		#text(weight: "bold", fill: accent)[#icon #title]
	]
	#v(0.35em)
	#body
]

#let callout_example(body, title: "Przykład") = callout_box(rgb(124, 106, 247), rgb(240, 239, 255), sym.equiv, title, body, false)

#let callout_attention(body, title: "Uwaga") = callout_box(rgb(249, 115, 22), rgb(255, 244, 237), sym.triangle.stroked.small.t, title, body, true)

#let callout_tldr(body, title: "Wersja skrócona") = callout_box(rgb(13, 148, 136), rgb(232, 250, 248), "🗒", title, body, true)

#let callout_note(body, title: "Informacja") = callout_box(rgb(59, 130, 246), rgb(239, 246, 255), "ℹ", title, body, true)

#let obrazek(src, image-width: 80%, margin: 0.2em) = align(center)[
	#v(margin)
	#figure(image(src, width: image-width))
	#v(margin)
]

#let przyklej(body) = block(sticky: true)[
	#par(body)
]

#let rawLink(url) = link(url)[#raw(url)]

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
