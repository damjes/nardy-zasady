#let wyrozniony_fragment(accent, bg, icon, title, body, sticky) = block(
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

#let przyklad(body, title: "Przykład") = wyrozniony_fragment(rgb(124, 106, 247), rgb(240, 239, 255), sym.equiv, title, body, false)

#let uwaga(body, title: "Uwaga") = wyrozniony_fragment(rgb(249, 115, 22), rgb(255, 244, 237), sym.triangle.stroked.small.t, title, body, true)

#let tldr(body, title: "Wersja skrócona") = wyrozniony_fragment(rgb(13, 148, 136), rgb(232, 250, 248), "🗒", title, body, true)

#let informacja(body, title: "Informacja") = wyrozniony_fragment(rgb(59, 130, 246), rgb(239, 246, 255), "ℹ", title, body, true)

#let obrazek(src, image-width: 80%, margin: 0.2em) = align(center)[
	#v(margin)
	#figure(image(src, width: image-width))
	#v(margin)
]

#let przyklej(body) = block(sticky: true)[
	#par(body)
]

#let surowyLink(url) = link(url)[#raw(url)]
