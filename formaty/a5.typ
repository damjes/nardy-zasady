#import "../ksiazka.typ": ksiazka

#set page(
	paper: "a5"
)

#ksiazka(() => pagebreak(to: "odd"), "ISO A5", false)