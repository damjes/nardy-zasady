#import "../ksiazka.typ": ksiazka

#set page(
	width: 90mm,
	height: 120mm,
	margin: (x: 5mm, y: 8mm)
)

#ksiazka(() => pagebreak(weak: true), "Amazon Kindle (90mm x 120mm)", true)