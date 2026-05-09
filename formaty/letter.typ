#import "../ksiazka.typ": ksiazka

#set page(
	paper: "us-letter"
)

#ksiazka(() => pagebreak(to: "odd"), "US Letter", false)