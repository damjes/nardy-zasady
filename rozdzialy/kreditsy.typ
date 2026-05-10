#import "/funkcje.typ": *

#let mail = {
	let username = "git"
	let domain = "damj.es"
	let mail = username + "@" + domain
	let mailto = "mailto:" + mail
	link(mailto, raw(mail))
}

= Źródła i uwagi końcowe

Zdjęcia pochodzą z~Wikipedii i~Wikimedia Commons. Grafiki wektorowe są dziełem autora (czyli moïm).

Całość jest dostępna na~licencji DamjesaP 2.1 dostępnej pod adresem #surowyLink("https://github.com/damjes/damjesap"). Wszelkie uwagi, pytania, sugestie i~krytyka są mile widziane. Można się ze~mną skontaktować wysyłając maila na~adres #mail lub~zaproponować PR w~serwisie GitHub w~repozytorium #link("https://github.com/damjes/nardy-zasady")[`damjes/nardy-zasady`].

Osobiście jestem zwolennikiem stosowania w~języku polskim dierezy na~oznaczenie nieäsymilujących samogłosek, dlatego literki z~dierezą (ä, ë, ï, ö, ü) są konsekwentnie używane w~niniejszym tekście.
