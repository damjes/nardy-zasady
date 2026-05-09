#import "../ksiazka.typ": ksiazka

#set page(
	paper: "a6"
)

#ksiazka(() => pagebreak(to: "odd"), "ISO A6", false)