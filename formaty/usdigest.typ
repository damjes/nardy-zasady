#import "../ksiazka.typ": ksiazka

#set page(
	paper: "us-digest"
)

#ksiazka(() => pagebreak(to: "odd"), "US Digest", false)