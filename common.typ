#let common(doNieparzystejStrony, czyKindle) = [ 
	#set document(
		title: "Oficjalne Damjesowe zasady gry w nardy",
		author: "wiel. Damjes",
	)

	#set page(numbering: none)

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

	#let rozmiarTytulu = if czyKindle {14pt} else {26pt}
	#let odstepPionowy = if czyKindle {0.5em} else {2em}

	// ─── Strona tytułowa ───
	#v(odstepPionowy)
	#align(center)[
		#set par(justify: false)
		#text(size: rozmiarTytulu, weight: "bold", hyphenate: false)[Oficjalne Damjesowe zasady gry w~nardy]
		#v(0.2em)
		*(znane też~jako backgammon, tryktrak, tabla, tavli, tavla...)*
		#v(0.6em)
		#text(size: 12pt, style: "italic")[wiel. Damjes]
	]

	#v(odstepPionowy)

	#block(height: 1fr)[
		#image("obrazki/Codex_Manesse_262v_Herr_Goeli.jpg", width: 100%, height: 100%, fit: "contain")
	]

	#doNieparzystejStrony()

	// --- Treść dokumentu ---
	#set page(numbering: "1")

	#outline()

	#doNieparzystejStrony()

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

	#doNieparzystejStrony()

	#if not czyKindle [
		// pusta strona okładki

		#pagebreak()
	]

	#align(center + bottom)[
		#import "version.typ": *

		wersja #wersja

		Wrocław, #data

		#v(1.5em)

		copyleft #sym.copyleft 2024-#rok

		under DamjesaP 2.1

		by wiel. Damjes
	]
]