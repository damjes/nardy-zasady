#import "../ksiazka.typ": ksiazka

#set page(
	paper: "uk-book-b",
)

#ksiazka(() => pagebreak(to: "odd"), "UK Book B", false)