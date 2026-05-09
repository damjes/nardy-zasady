#import "../ksiazka.typ": ksiazka

#set page(
	paper: "a4"
)

#ksiazka(() => pagebreak(to: "odd"), "ISO A4", false)