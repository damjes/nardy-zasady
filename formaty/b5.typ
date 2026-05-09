#import "../ksiazka.typ": ksiazka

#set page(
	paper: "iso-b5"
)

#ksiazka(() => pagebreak(to: "odd"), "ISO B5", false)