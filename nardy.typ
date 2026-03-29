#set document(
	title: "Oficjalne Damjesowe zasady gry w nardy",
	author: "wiel. Damjes",
)

#set page(
	paper: "a5",
	footer: context align(center, text(size: 10pt)[#counter(page).display()]),
)

#set text(
	font: ("Linux Libertine", "Libertinus Serif"),
	size: 11pt,
	lang: "pl",
	hyphenate: true,
)

#show raw: set text(font: "IosevkaTermSlab NFP")

#set par(
	justify: true,
	spacing: 0.7em,
	first-line-indent: (
		amount: 1.5em,
		all: true,
	)
)

// Callout box definitions
#let callout_box(accent, bg, icon, title, body, sticky) = block(
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

#let callout_example(body, title: "Przykład") = callout_box(rgb(124, 106, 247), rgb(240, 239, 255), sym.equiv, title, body, false)

#let callout_attention(body, title: "Uwaga") = callout_box(rgb(249, 115, 22), rgb(255, 244, 237), sym.triangle.stroked.small.t, title, body, true)

#let callout_tldr(body, title: "Wersja skrócona") = callout_box(rgb(13, 148, 136), rgb(232, 250, 248), "🗒", title, body, true)

#let callout_note(body, title: "Informacja") = callout_box(rgb(59, 130, 246), rgb(239, 246, 255), "ℹ", title, body, true)

#let obrazek(src, image-width: 80%, margin: 0.2em) = align(center)[
	#v(margin)
	#figure(image(src, width: image-width))
	#v(margin)
]

#let przyklej(body) = block(sticky: true)[
	#par(body)
]

// ─── Title page ───────────────────────────────────────────────────────────────
#v(2em)
#align(center)[
	#set par(justify: false)
	#text(size: 26pt, weight: "bold", hyphenate: false)[Oficjalne Damjesowe zasady gry w~nardy]
	#v(0.2em)
	*(znane też~jako backgammon, tryktrak, tabla, tavli, tavla...)*
	#v(0.6em)
	#text(size: 12pt, style: "italic")[wiel. Damjes]
]
#v(1.5em)

Osobiście przyjmuję nazwę nardy, jednak dopuszcza się inne w/w warianty. Niniejsze zasady zostały skodyfikowane, ponieważ nie znalazłem pełnego opisu w~języku polskim, a~taki opis jest potrzebny w~formie pisanej, żeby potem nie było (jak zwykle), że~zasada istnieje, a~ja "o~niej nie mówiłem, więc~na pewno oszukuję".

= Wyposażenie

Na~pierwszej rycinie jest widoczny zestaw do~gry w~nardy, gotowy do~rozpoczęcia rozgrywki:

#obrazek("obrazki/Backgammon_lg.png", image-width: 100%, margin: 0.2em)

#przyklej[Do~grania w~nardy niezbędne są:]

- plansza – zawiera 24 trójkątne pola (często w~naprzemiennych kolorach, co ułatwia liczenie, choć nie jest wymagane), zwykle jest wykonana jako wnętrze pudełka lub~walizki (patrz rycina powyżej);
- dwie zwykłe sześcienne kości do~gry K6 (nie jest możliwe użycie kości Sichermana#footnote[kości Sichermana omówiono w sekcji FAQ]);
- dwa zestawy po~15 pionów w~różnych kolorach (na~rycinie powyżej czerwone i~czarne).

#przyklej[Oprócz tego, w~zestawach zwykle znajdują się:]

- kość dublująca – zwykle większa kość, na~ściankach są kolejne potęgi dwójki: 2, 4, 8, 16, 32, 64, czasami zamiast 64 jest logo producenta, czasami kość dublująca jest pudełkiem na~kostki do~rzucania, na~rycinie powyżej czerwona kość po~lewej stronie z~liczbą 64;
- druga para kości K6 w~innym kolorze (na~rycinie powyżej widać obie pary: dwie kostki czerwone i~dwie białe);
- kubki do~rzucania kostkami (na~rycinie powyżej są dwa, przypominają spłaszczone walce).

Czasami (zwłaszcza na~turniejach) używa się tzw. kości precyzyjnych. Są to precyzyjniej wykonane odpowiedniki zwykłych kostek, przez co bardziej losowe i~sprawiedliwe.

#przyklej[W czasie gry można także wykorzystywać inne akcesoria, w~tym:]

- specjalny podwójny zegar do~odmierzania czasu na~ruch gracza (patrz sekcja Zegar);
- wieżę do~rzucania kośćmi: kości wrzuca się od~góry, następnie turlają się one po~wewnętrznych przeszkodach i~wypadają u~dołu, zastępuje to użycie kubków (na~rycinie poniżej widoczna jest wykonana w~IV wieku wieża Vettweiss-Froitzheim ze~zbiorów Reńskiego Muzeum Narodowego w~Bonn);
#v(0.2em)
#obrazek("obrazki/Vettweiss-Froitzheim_Dice_Tower.jpg", image-width: 80%, margin: 0.2em)
#v(0.2em)
- planszę do~liczenia punktów w~czasie meczu (patrz rycina poniżej, plansza do~punktów znajduje się za~planszą do~gry i~wskazuje wynik 1:1 i~grę do~7).
#obrazek("obrazki/Deskohrani_2009_353.jpg", image-width: 80%, margin: 0.2em)

= Budowa planszy i~kierunek ruchu

#callout_tldr()[
Gracze poruszają się od~pola z~dwoma swoimi pionami (w~położeniu początkowym), zgodnie z~ryciną poniżej.
]

Przez środek planszy przebiega banda. To zwykle tam znajdują się zawiasy, jeżeli plansza jest składaną walizką. Bandę układa się wzdłuż linii łączącej graczy. Po~jednej stronie bandy (dowolnie wybranej) znajdują się domy graczy i~dwór, zaś po~drugiej podwórza (patrz rycina powyżej).

Plansza ma dwie strony (połowy) – bliższą dla~gracza i~dalszą. Strona dla~mnie dalsza będzie stroną bliższą dla~przeciwnika. Podział na~te strony przebiega prostopadle do~bandy.

Oznacza to, że~plansza podzielona jest na~cztery ćwiartki po~sześć pól każda. Ułożenie planszy pomiędzy graczami można zaobserwować na~rycinie powyżej oraz~poniżej.

Ułożenie początkowe, kierunki ruchów obu graczy i~numerację pól dla~gracza żółtego przedstawia poniższa rycina:

#figure(image("obrazki-gen/poczatek.pdf", width: 100%))

#przyklej[Ustawienie początkowe to:]

- 5 pionów na~polu 6,
- 3 piony na~polu 8,
- 5 pionów na~polu 13,
- 2 piony na~polu 24.

Ustawienie początkowe jednego gracza jest lustrzanym odbiciem ustawienia drugiego gracza. Oś symetrii jest prostopadła do~bandy.
 
#przyklej[Dla~takiego ułożenia początkowego oznacza to:]

- gracz grający żółtymi siedzi od~dołu ryciny (od~strony pól 1-12), zaś gracz grający czerwonymi siedzi od~góry ryciny (od~strony pól 13-24);
- po~lewej stronie znajdują się domy (pola 1-6 i~19-24), zaś po~prawej podwórze (pola 7-18);
- dom gracza żółtego znajduje się przy graczu żółtym, podobnie dom gracza czerwonego jest po~stronie gracza czerwonego.

Na~rycinie powyżej zaznaczono numerację dla~gracza żółtego. Na~początku strzałki mamy pole 24, wzdłuż strzałki numeracja maleje i~przy grocie ostatnie pole ma numer 1.

*Gracz czerwony ma swoją numerację, która jest odwrócona w~stosunku do~numeracji gracza żółtego.* Eg.~pole 1 dla~gracza czerwonego, to pole 24 dla~gracza żółtego (pole 24 to pole 1, pole 18 to pole 7, itd.). Numeracja może być brana z~pola naprzeciwko (eg.~pole 18 jest naprzeciwko pola 7).

Gracz porusza się pionami w~kierunku: z~domu przeciwnika, przez podwórze, potem wchodzi do~swojego domu i~na końcu na~dwór (poza planszę), czyli w~kierunku malejącej numeracji zgodnie ze~strzałką na~rycinie powyżej. Na~najdalszej pozycji w~położeniu początkowym (na~polu 24) znajdują się dwa piony w~domu przeciwnika. Zatem:
- gracz żółty (siedzący u~spodu obrazka) ma dwa piony w~domu przeciwnika na~polu 24;
- gracz żółty będzie się poruszał w~prawo, potem w~dół i~potem w~lewo w~kierunku swojego domu, będzie zatem poruszał się zgodnie z~ruchem wskazówek zegara od~pola 24 przez pola 13 i~12 do~pola 1 (patrz żółta strzałka);
- gracz czerwony będzie się poruszał odwrotnie (patrz czerwona strzałka) – zacznie w~domu przeciwnika (pole 24, *jednak w~numeracji z~ryciny, czyli gracza żółtego oznaczone jako 1*) i~będzie zmierzał przeciwnie do~ruchu wskazówek zegara do~swojego domu.

Oczywiście dla~lustrzanego ułożenia wzdłuż bandy (dwa żółte piony w~prawym górnym rogu) to tam graczowi żółtemu wypadłoby pole 24, oba domy byłyby po~prawej, zaś to gracz żółty poruszałby się przeciwnie do~ruchu wskazówek zegara. Możliwe też~są dowolne kolory pionów graczy, nie muszą być akurat czerwone i~żółte.

= Cel gry

#przyklej[Celem gracza jest:]

+ Zgromadzenie pionów w~swoim domu;
+ Wyprowadzenie pionów z~domu na~dwór (poza planszę).

Gracz może realizować wyprowadzenie pionów na~dwór tylko wtedy, jeżeli wszystkie piony wewnątrz planszy (ie.~niewyprowadzone na~dwór) znajdują się w~domu.

= Zasady poruszania się pionów

Pion może stanąć na~pustym polu. Pion może stanąć na~polu zajętym przez piony gracza aktualnie wykonującego ruch. Układa się wtedy piony w~linii wzdłuż najdłuższej wysokości trójkąta (patrz choćby ustawienie początkowe na~rycinie wyżej). W~przypadku wyjścia poza rozmiar pola dopuszcza się umieszczenie pionów w~jednej linii w~przedłużeniu pola (o~ile to nie zakłóca pola naprzeciwko) lub~ułożenie piona na~innych pionach zajmujących to samo pole (patrz rycina poniżej).

#figure(image("obrazki-gen/duzo_pionow.pdf", width: 80%))

Pion może stanąć na~polu zajętym przez przeciwnika tylko wtedy, kiedy pion przeciwnika stoi samotnie. W~takim przypadku pion przeciwnika zostaje zbity i~odłożony na~bandę. Na~rycinach poniżej widać sytuację przed biciem i~po.

#figure(image("obrazki-gen/bicie_przed.pdf", width: 80%))

#figure(image("obrazki-gen/bicie_po.pdf", width: 80%))

Jeżeli na~polu stoją dwa lub~więcej piony przeciwnika, to pion gracza nie może na~tym polu stanąć.

Gracz ma obowiązek wprowadzić wszystkie piony z~bandy przed wykonaniem innych ruchów. Jeżeli gracz nie może wprowadzić piona, ruch przepada.

Jeżeli gracz zacznie wyprowadzać piony z~domu i~co najmniej jeden z~jego pionów zostanie zbity, gracz przestaje spełniać pierwszy warunek ukończenia gry (wszystkie piony w~domu), traci zatem prawo do~wyprowadzania pionów na~dwór do~momentu ponownego spełnienia pierwszego warunku (czyli najpierw musi wrócić zbitymi pionami do~domu). Pierwszy warunek dotyczy wtedy tylko pionów, które jeszcze nie zostały wyprowadzone na~dwór.

= Rzut kośćmi

Możliwości ruchu w~grze wyznaczane są przez rzut kośćmi. Gracze rzucają na~początku swojej tury dwiema kośćmi. Każda kość oznacza o~ile można przesunąć pojedynczego piona. W~wypadku wyrzucenia dubletu (ie.~tej samej wartości na~obu kościach) rzut ulega podwojeniu.

#callout_example()[
Jeżeli gracz wyrzuca 5-2, to nie ma podwojenia.

Jeżeli gracz wyrzuca 5-5, to dwa ruchy o~5 zostają podwojone do~czterech ruchów o~5. Zatem wyrzucenie danej wartości dwukrotnie w~ramach jednego rzutu oznacza cztery ruchy o~tę wartość.

#figure(image("obrazki-gen/dublowanie_rzutu.pdf", width: 60%))
]

Wyjątek stanowi pierwsza tura. Każdy z~graczy wykonuje wtedy rzut jedną kością. Zaczyna ten gracz, na~którego kości wypadła większa wartość. Gracz wykorzystuje oba wyniki do~ruchów, nie wykonuje się ponownego rzutu (jak przed kolejnymi turami). W~przypadku wystąpienia dubletu każdy z~graczy powtarza rzut.

Można przesunąć tego samego piona wielokrotnie, o~ile robi się to etapami.

#callout_example()[
#przyklej[Pion jest na~polu 22, gracz chce go przesunąć na~pole 14, na~kościach wypadło 5-3:]

- gracz może wykonać ruch o~3 (o~ile może stanąć na~polu 19), a~następnie stanąć na~polu 14 (również w~miarę możliwości);
- gracz może wykonać ruch o~5 (stanąć w~miarę możliwości na~17), a~następnie (jeżeli możliwe) na~14;
- jeżeli pola 17 oraz~19 są zajęte przez piony przeciwnika (oba więcej, niż jednym), to dla~tego rzutu ruch z~pola 22 do~pola 14 jest niemożliwy, patrz rycina;
#figure(image("obrazki-gen/blokada_ruchu.pdf", width: 100%))
- oczywiście, jeżeli pole 14 jest zajęte przez piony (co najmniej dwa) przeciwnika, to ruch na~pole 14 jest niemożliwy, niezależnie od~zajętości innych pól.
]

Gracz ma obowiązek najpierw wprowadzić wszystkie zbite piony. Kolejka gracza kończy się, jeśli gracz ma niewyprowadzone piony, ale~nie może ich wyprowadzić. W~szczególności, gdy na~wszystkich polach domu przeciwnika (19-24) ma on ustawione po~co najmniej dwa piony, czasami pomija się także sam rzut.

#callout_example()[
Jeżeli gracz wyrzuci 3, to może wejść na~planszę i~poruszyć się o~trzy pola, ie.~wejść na~pole 22 (o~ile może na~nim stanąć).
]

#figure(image("obrazki-gen/wejscie.pdf", width: 100%))

Gracz ma obowiązek wykonać wszystkie ruchy, a~jeżeli nie jest to możliwe, to najwięcej ruchów, ile jest możliwe. W~przypadku możliwości ruchu jedną albo drugą kością należy wybrać wyższy wynik rzutu. Jeżeli ruch wartością z~jednej kości jest niemożliwy, ale~stanie się możliwy po~odpowiednim ruchu wartością z~drugiej kości, taki ruch z~drugiej kości staje się obowiązkowy. Pogorszenie sytuacji na~planszy nie stanowi usprawiedliwienia. Niemożliwe do~wykonania ruchy przepadają.

Gracz nie musi wykonywać rzutu przy grze bez zegara, jeżeli wiadomo jest, że ruch jest niemożliwy (ie.~w~domu przeciwnika wszystkie pola zajęte są przez więcej, niż jeden pion, a~gracz ma zbitego piona, którego musi wprowadzić).

Gracz może (po~spełnieniu warunków) wyprowadzić piona na~dwór wtedy, kiedy dystans do~końca planszy (czyli numer pola) odpowiada wyrzuconej wartości. W~przypadku braku możliwości ruchu, spowodowanego tym, że~piony stoją za~blisko końca planszy, dopuszcza się wyprowadzenie na~dwór piona najdalszego.

#callout_example()[
Gracz ma tylko po~trzy piony na~polach 1 i~2 i~wyrzuca 5-5. Nie może wyprowadzić piona z~pustego pola 5 ani nie może przesunąć pionów o~5, zatem dokonuje wyprowadzenia czterech pionów – trzech z~pola 2 i~jednego z~pola 1. Jest to jedyny legalny ruch (patrz rycina).
#figure(image("obrazki-gen/koncowka.pdf", width: 80%))
]

== Zasady etykiety przy rzutach kośćmi

Każdy z~graczy może wykorzystywać swoją parę kości (jeżeli są dostępne). Włożenie kości do~kubka traktowane jest jako potwierdzenie ruchu. Zanim gracz potwierdzi ruch, może on wykonać jakiś ruch, cofnąć jego wykonanie i~wykonać inny. Tego typu zmian zdania możliwych jest więcej. Ruch jest ostateczny, jeżeli kości zostaną zabrane z~planszy lub~(ewentualnie) zależnie od~lokalnych ustaleń, eg.~po~ustnym potwierdzeniu.

Gracz powinien wykonywać rzuty na~swojej stronie bandy, ie.~prawej patrząc od~gracza. Wyjątkiem jest użycie wieży do~rzutów, wtedy gracze wykonują rzuty na~połowę wynikającą z~umiejscowienia wieży. Wieżę umieszcza się po~przeciwnej stronie zegara (o~ile występują razem).

#przyklej[Poprawny rzut kośćmi musi być:]

- *wewnątrz połowy planszy:* kości nie mogą opuścić planszy;
- *na~powierzchni planszy:* kości nie mogą wylądować na~pionach;
- *na~płasko:* kości nie mogą być oparte o~krawędź planszy lub~piony.

Niepoprawny rzut należy powtórzyć. Nawet jeżeli jedna z~kości oparła się o~piona, powtarzamy cały rzut obiema kośćmi.

= Punktacja

W pojedynczej grze wyprowadzenie pionów przed przeciwnikiem to wygrana. Gra taka czasami jest określana grą na~pieniądze (patrz FAQ), nawet jeżeli nie stanowi rozgrywki hazardowej (sic!). Mark Driver#footnote[#link("https://www.gammonvillage.com/backgammon/magazine/the_money_game.cfm")] uważa tę nazwę za~mylącą i~proponuje nazwy takie jak _gra pojedyncza_ lub~_nielimitowany mecz_.

W~przypadku meczów gra toczy się do~ustalonej (zwykle nieparzystej) liczby punktów. Wygrywa ten gracz, który jako pierwszy ją przekroczy.

Wygrana to jeden punkt. Jeżeli gracz wyprowadzi wszystkie piony, zanim przeciwnik wyprowadzi jakikolwiek pion, będzie to _gammon_, warty 2 punkty. Jeżeli gracz będzie miał piony zbite lub~w~domu przeciwnika, podczas kiedy przeciwnik wyprowadzi wszystkie piony, to taka sytuacja to _backgammon_, warty 3 punkty.

== Kość dublująca

Kość dublującą kładzie się liczbą 64 (lub logiem) do~góry na~jednym (lewym/prawym) z~boków w~połowie planszy. Kość leżąca na~środku jest do~dyspozycji obu graczy i~oznacza wartość 1 (patrz rycina poniżej). Kość leżąca przy jednym z~graczy jest do~jego wyłącznej dyspozycji i~oznacza mnożnik stawki wskazany na~kości.

#figure(image("obrazki-gen/kosc_poczatek.pdf", width: 100%))

Wartość kości dublującej stanowi mnożnik punktów.

#callout_example()[
Kość dublująca wskazująca 4 i~backgammon oznaczają 12 punktów.
]

Gracz, który ma kość do~dyspozycji, może, przed wykonaniem rzutu, sięgnąć po~kość, podwoić wskazywaną wartość (odpowiednio obracając kość) i~wręczyć ją przeciwnikowi. Jeżeli przeciwnik przyjmie kość, ta zostaje do~jego wyłącznej dyspozycji (do~czasu kolejnego podwojenia), zaś stawka ulega podwojeniu. Jeżeli przeciwnik odmówi przyjęcia kości, gra zostaje przerwana, a~przeciwnik przegrywa jednym punktem pomnożonym przez wartość wskazywaną przez kość sprzed ostatniego zwiększenia.


#callout_example()[
Przeciwnik ma kość wskazującą 4. Kładzie on przed graczem kość z~wartością 8 (patrz rycina poniżej). Gracz może kość odrzucić i~natychmiast przegrać czterema punktami lub~kość przyjąć, mieć ją do~dyspozycji i~zgodzić się na~kolejne podwojenie stawki.

#figure(image("obrazki-gen/kosc_w_grze.pdf", width: 60%))
]

== Bóbr, szop i inne zwierzątka

#callout_attention()[
Zwykle stosuje się te zasady rzadko i~tylko do~gry na~pieniądze, ale~gracze mogą postanowić inaczej.
]

Gracz, który otrzymuje kość dublującą wraz z~ofertą podwojenia, może zrobić kontrę: _bobra_ (_beaver_), czyli zgodzić się na~podwojenie i~jednocześnie samemu dokonać podwojenia zachowując dyspozycję kością.

Przeciwnik może na~bobra odpowiedzieć rekontrą: _szopem_ (_racoon_), czyli jeszcze jednym podwojeniem stawki. Kość zostaje do~dyspozycji gracza, który zrobił bobra (choć niektóre zasady twierdzą, że~kość wraca). Szop jest stosowany rzadziej, niż bóbr.

Na szopa można odpowiedzieć rekontrą w postaci _mrównika_ (_aardvark_), _wydry_ (_otter_) lub innego zwierzęcia. Kość zawsze zostaje do~dyspozycji gracza, któremu zaoferowano pierwotne podwojenie. Zasady dotyczące kolejnych zwierząt są stosowane jeszcze rzadziej, niż zasady w/w.

== Reguła Crawforda

#callout_attention()[
Zwykle stosuje się tę zasadę w~meczach, ale~gracze mogą postanowić inaczej.
]

Jeżeli jeden z~graczy w~meczu osiągnie taki wynik, że~do~wygranej brakuje mu 1 punktu, następna pojedyncza gra nazywa się grą Crawforda i~użycie kości dublującej jest w~niej zakazane. W~kolejnych grach, mimo wciąż braku pojedynczego punktu, użycie kości dublującej jest dozwolone.

== Reguła Hollanda

#callout_attention()[
Obecnie nie stosuje się tej zasady, ale~gracze mogą postanowić inaczej.
]

Po grze Crawforda użycie kości dublującej jest możliwe jedynie po~wykonaniu po~dwa rzuty przez każdą ze~stron.

== Reguła Jacobiego

#callout_attention()[
Zwykle stosuje się tę zasadę tylko do~gry na~pieniądze, ale~gracze mogą postanowić inaczej.
]

Gammon i~backgammon są punktowane wyżej, tylko jeżeli w~danej grze zaproponowano i~przyjęto kość dublującą. W~przeciwnym wypadku są punktowane jak zwykła wygrana warta 1 punkt.

== Reguła Murphyego

#callout_attention()[
Obecnie nie stosuje się tej zasady (a~jeśli się stosuje, to tylko w~grach na~pieniądze), ale~gracze mogą postanowić inaczej.
]

Reguła Murphyego zwana też~regułą automatycznych podwojeń polega na~tym, że~w~przypadku wyrzucenia dubletu (również w~pierwszych rzutach, kiedy każdy z~graczy rzuca pojedynczą kością) gra ulega podwojeniu. Kość dublującą obraca się, jednak pozostaje ona na~środku boku planszy (nie jest przesuwana do~któregokolwiek z~graczy) i~pozostaje ona wspólna.

Gracze mogą umówić się na~limit takich podwojeń (zwykle przyjmuje się jedno podwojenie).

== Punktacja Damjesa

#callout_attention()[
Ta zasada została wymyślona przeze mnie i~nie jest powszechnie znana, niemniej wydaje mi się pożądana i~jestem ciekawy opinii.
]

#przyklej[Gry w~meczach punktuje się następująco:]

- jeżeli w~momencie wygranej przegrana strona ma wszystkie niewyprowadzone piony w~swoim domu, liczba punktów jest równa liczbie niewyprowadzonych pionów (czyli 15 minus liczba wyprowadzonych pionów);
- gammon inny, niż w/w jest wart 30 punktów (dwukrotność 15 punktów, czyli maksymalnej wygranej zwykłej);
- backgammon jest wart 45 punktów (trzykrotność 15 punktów).

Z~góry ustalona liczba punktów powinna być dużo wyższa (eg.~135 punktów – dziewięciokrotność 15 punktów). Kość dublująca podwaja punktację normalnie.

#callout_example()[
Jeżeli strona przegrana ma dwa piony na~polu 1 i~jeden pion na~polu 2 (czyli wszystkie piony w~swoim domu), to oznacza to trzy brakujące piony, a~zatem trzy punkty wygranej dla~zwycięzcy.

Jeżeli strona przegrana ma dwa piony na~polu 1 i~jeden pion na~polu 8 (czyli jeden pion poza domem), oznacza to 30 punktów.

Jeżeli strona przegrana ma dwa piony na~polu 1 i~jeden pion na~polu 20 (w~domu przeciwnika – backgammon), oznacza to 45 punktów.

Jeżeli wszystkie piony przegranego znajdują się w~domu przegranego (a~nie zaczął on jeszcze ich wyprowadzać), oznacza to 15 punktów.
]

= Zegar

Do~gry można (nie jest to wymagane) użyć specjalnego zegara (znanego też~jako _zegar szachowy_ lub~_game clock_, patrz rycina poniżej). Są to dwa zegary zespolone tak, że~w~czasie normalnej pracy jeden z~nich odmierza czas w~dół, a~drugi jest zatrzymany. Istnieją zegary, w~których powyższe zachowanie zależy od~wybranego trybu.

#obrazek("obrazki/DGT_2010_digital_chess_clock.ajb.jpg", image-width: 80%, margin: 0.2em)

Każdy z~graczy dysponuje przyciskiem do~zatrzymania swojego zegara i~równoczesnego uruchomienia zegara przeciwnika. Często przyciski te są zespolone w~jeden duży przełącznik (biały element na~górze na~rycinie powyżej). Gracz, któremu jako pierwszemu skończy się czas, przegrywa cały mecz, chyba, że ma gwarantowane zwycięstwo. Zwykle zegar nastawia się na~2 minuty na~każdy punkt oraz~12 sekund tzw. Simple Delay (proste opóźnienie) niezależnie od~limitu punktów.

#callout_example()[
Jeżeli gracze grają do~5 punktów, to każdy z~graczy zaczyna z~10 minutami na~zegarze i~12 sekundami Simple Delay.
]

== Etykieta gry z~zegarem

W przypadku gry z~zegarem zaleca się użycie tego samego zestawu dwóch kości przez obu graczy. Przeciwnik naciśnięciem przycisku stopuje swój zegar i~uruchamia zegar gracza. Stanowi to potwierdzenie ruchu (nie należy dotykać kości po~wykonaniu ruchu). Gracz bierze kości (z~których przed chwilą korzystał przeciwnik) z~planszy, wykonuje rzut, wykonuje ruch i~następnie naciska przycisk zegara. Cykl się powtarza – przeciwnik rzuca tymi samymi kośćmi i~gra toczy się dalej. Rzut kośćmi, ruch i~naciśnięcie zegara musi się odbyć w~tej kolejności i~tą samą ręką.

Przekazanie oraz~przyjęcie kości dublującej wymagają uruchomienia czasu przeciwnika przez naciśnięcie przycisku na~zegarze (o~ile używa się zegara).

#callout_example()[

#przyklej[Jeżeli gracz chce użyć kości dublującej, a~przeciwnik się na~to godzi, to:]

+ przeciwnik kończy ruch i~naciska przycisk na~zegarze;
+ czas gracza zaczyna płynąć;
+ gracz ma czas na~zastanowienie;
+ po~podjęciu decyzji o~użyciu kości, zamiast rzutu kośćmi, gracz sięga po~kość dublującą, obraca ją odpowiednią stroną i~kładzie przed przeciwnikiem;
+ położenie kości dublującej kończy ruch gracza, zatem naciska on przycisk na~zegarze;
+ czas przeciwnika zaczyna płynąć;
+ przeciwnik zastanawia się nad~przyjęciem kości;
+ przeciwnik podejmuje decyzję o~przyjęciu kości;
+ kładzie on zatem kość przy sobie;
+ kończy to jego ruch, więc naciska przycisk;
+ czas gracza zaczyna płynąć;
+ rzuca on kośćmi, gra toczy się dalej.
]

Zegar (jeżeli jest używany) należy ustawić po~stronie domów graczy.

== Simple Delay

Simple Delay (znany też~jako US Delay) działa w~ten sposób, że~zegar odmierza ten czas jako pierwszy. Jeżeli gracz zdąży w~tym czasie wykonać ruch, nie odejmuje się czasu z~jego zegara, zaś urządzenie zaczyna odmierzać Simple Delay przeciwnikowi. Jeżeli czas Simple Delay się skończy, czas jest brany z~głównego czasu danego gracza.

#callout_example()[
Początek gry. Gra do~5 punktów, zatem ustawienie zegara to 10 minut + 12 sekund Simple Delay. Gracz wykonał ruch w~7 sekund, zatem jego zegar dalej wskazuje 10:00. Jego przeciwnik wykonał ruch w~20 sekund, co oznacza, że~zużył on całe 12 sekund Simple Delay, a~pozostałe 8 sekund zużył on z~czasu głównego, zatem po~ruchu jego zegar wskaże 09:52, czyli pozostało mu 9 minut i~52 sekundy.
]

== Alternatywy do~Simple Delay

#callout_attention()[
Mogą występować pewne różnice w~implementacji niżej wymienionych systemów. Niemniej osobiście przyjmuję, że~dana nazwa odpowiada podanemu opisowi, w~szczególności mówiąc o~systemach Fischera i~Bronsteina mam na~myśli doliczanie czasu *po~ruchu*, chociaż prawdopodobnie można się spotkać też~z~odwrotną interpretacją. Osobiście przyjmuję, że~doliczanie czasu *przed* ruchem wymaga wskazania _explicite_ (eg.~_System Fischera z~doliczaniem przed_ lub~w~skrócie _Fischer przed_).
]

=== System Fischera

W systemie Fischera główny czas gracza jest zużywany od~razu. Po~ruchu gracza (ie.~po~naciśnięciu przycisku) zostaje doliczony stały, ustalony wcześniej czas.

#callout_example()[
Gra toczy się wg ustawień 14 minut + 12 sekund w~systemie Fischera. Gracz na~zegarze ma wskazanie 13:59 (co oznacza pozostały czas 13 minut i~59 sekund). Jeżeli gracz wykona ruch w~4 sekundy, to jego zegar wskaże 13:55, a~po~naciśnięciu przycisku zostanie doliczone jeszcze 12 sekund i~zegar wskaże 14:07.
]

#callout_attention()[
W~systemie Fischera nie stanowi problemu sytuacja, w~której gracz ma do~dyspozycji więcej czasu, niż na~początku rozgrywki.
]

=== System Bronsteina

System Bronsteina tym różni się od~systemu Fischera, że~czas nie może ulec wydłużeniu.

#callout_example()[
Dla~przykładu powyżej, jeżeli zegar gracza pokazuje 13:59 i~gracz wykona ruch poniżej 12 sekund (eg.~w~2 sekundy), to zegar po~ruchu dalej będzie wskazywał 13:59. Dla~ruchu trwającego 15 sekund ostateczne wskazanie wyniesie 13:56.
]

=== Różnice względem Simple Delay

Dodawanie czasu *po* ruchu skutkuje tym, że~dodawany czas nie jest dostępny w~bieżącym ruchu. Simple Delay dodaje czas *przed* ruchem, zatem jest on dostępny od~razu.

#callout_example()[
Gracz ma do~dyspozycji 3 sekundy głównego czasu. Jeżeli gracz wykona ruch w~5 sekund w~systemach Fischera i~Bronsteina, to po~3 sekundach skończy się czas i~gracz przegra cały mecz. W~systemie Simple Delay najpierw zostanie odliczone 12 sekund, zatem gracz w~następnym ruchu dalej będzie miał do~dyspozycji 3 sekundy. W~systemie Fischera *z doliczaniem przed* gracz będzie miał 15 sekund do~dyspozycji, zużyje 5, zatem do~następnego ruchu przystąpi z~10 sekundami głównego czasu.
]

=== Zalecenia

#przyklej[Osobiście zalecam stosowanie pierwszego dostępnego systemu z~listy:]

+ Simple Delay,
+ Bronstein,
+ Fischer *przed*,
+ Fischer,
+ brak dodatkowego czasu *oraz wydłużenie czasu podstawowego*.

== Korzyści ze stosowania zegara

#przyklej[Brytyjska Federacja Nard (UKBGF) wskazuje na~swojej stronie#footnote[#link("https://ukbgf.com/members/articles/the-newcomers-guide-to-clocks/")] następujące korzyści z~użycia zegara:]

- *eliminacja przedwczesnych rzutów:* ponieważ rzut następuje po~naciśnięciu zegara;
- *łatwiejsze rozwiązywanie sporów:* gracz nie zabiera kości, lecz naciska zegar, zatem łatwiej jest dowieść nieprawidłowego ruchu, ponieważ kości wciąż wskazują, co wypadło u~przeciwnika, a~nie leżą w~kubku jednego z~graczy;
- *nierozpraszanie przeciwnika:* rzut następuje w~swoim czasie, zatem nie występuje problem rozpraszania przeciwnika głośnym potrząsaniem kubkiem z~kostkami.

== Stosowanie na~turniejach

#przyklej[_Ibidem_ można też~przeczytać o~czterech podejściach do~stosowania zegarów:]

- *obowiązkowe* – każdy ich używa;
- *preferowane* – zegar zostaje użyty na~żądanie jednego z~graczy;
- *opcjonalne* – zegar jest używany za~zgodą obu graczy;
- *wcale*.

Stosowana polityka dotycząca zegarów zależy od~konkretnego turnieju i~powinna być określona w~jego regulaminie.

= Notacja

== Notacja rzutu kośćmi

Przy podawaniu rzutów kośćmi podaje się najpierw niemniejszą z~wartości. Osobiście zalecam rozdzielenie liczb łącznikiem-minusem (ewentualnie dywizem lub~innym podobnym znakiem).

#callout_example()[
Poprawne zapisy rzutu kośćmi to 3-1, 6-2, 5-5, ale~nie 1-4. Dopuszcza się też~zapisy 3–1, 31, ewentualnie 3—1.
]

== Notacja ruchu

Ruch zapisuje się, podając pola rozdzielone łamaną kreską (`/`). W~przypadku powtórzeń, zapisuje się ich liczbę w~nawiasach. Bicie zapisuje się asteryskiem (`*`) po~numerze pola.

Bandę oznacza się jako `bar`, zaś dwór jako `off`. Osobiście dopuszczam też~stosowanie łącznika-minusa (ewentualnie dywizu lub~podobnego znaku). Kontekst zawsze wskazuje, z~czym mamy do~czynienia – _bar_ zawsze występuje przed łamaną kreską, zaś _off_ zawsze występuje po~łamanej kresce.

0 (lub `fan`) oznacza niemożliwość wprowadzenia piona.

Numeracja pól jest stosowana dla~bieżącego gracza (aktualny gracz porusza się w~kierunku malejących numerów pól).

#callout_example()[
- *8/4 6/4* oznacza ruch z~pola 8 na~pole 4 oraz~ruch z~pola 6 na~pole 4.
- *13/7\*/5* oznacza, że~pion z~pola 13 dokonał zbicia na~polu 7 i~następnie został umieszczony na~polu 5.
- *6/4(3) 13/11* oznacza ruch trzech pionów z~pola 6 na~pole 4, zaś pion z~pola 13 został umieszczony na~polu 11.
- *bar/22 17/9* oznacza, że~pion z~bandy został wprowadzony na~pole 22, zaś pion z~pola 17 został umieszczony na~polu 9.
- *5/off 2/off* oznacza, że~piony z~pól 5 i~2 zostały wprowadzone na~dwór.
]

== Notacja łączna

Dopuszcza się zapis łączny: zapisanie wyniku rzutu kośćmi, potem postawienie dwukropka i~spacji, a~następnie zapisanie ruchu.

#callout_example()[
*4-2: 8/4 6/4* oznacza, że~w~wyniku rzutu *4-2* wykonano ruch *8/4 6/4*.
]

= FAQ

== Ile pionów może stać na~jednym polu?

Zasady o~tym nie wspominają, ponieważ nie ma takiego limitu.

== Po~której stronie ma być dom?

Nie znalazłem reguły, która by to definiowała. Wydaje się, że gracze mają tu dowolność. Osobiście wybieram sam lub~pytam przeciwnika, po~której stronie woli dom.

Chris Bray, autor "Backgammon for Dummies" zdaje się ze~mną zgadzać w~tej kwestii.

Tradycyjnie, przed wynalezieniem elektryczności, dom był po~stronie lepiej oświetlonej (eg.~tam, gdzie na~stole stała świeczka).

== Czy mogę spasować?

Nie. Jeżeli ruch jest możliwy, to należy go wykonać, nawet jeżeli mamy do~czynienia z~zugzwangiem, czyli pogorszeniem pozycji.

== Czy mogę zbić piona i~uciec na~swojego piona lub~zbić drugiego?

Nie ma takich ograniczeń. Zarówno wielokrotne bicie, jak i~stanięcie bijącym pionem na~polu zajętym przez gracza, który wykonuje ruch jest dopuszczalne.

== Czym są te legendarne kości Sichermana?

Kości Sichermana nie są używane w~nardach, zatem ich znajomość nie jest wymagana.

Jeżeli analizujemy rozkład sumy rzutów dwiema kostkami K6, to najczęściej wypada 7, a~najrzadziej 2 i~12. Kości Sichermana mają alternatywny układ ścianek (na~jednej jest 1, 2, 2, 3, 3, 4, zaś na~drugiej 1, 3, 4, 5, 6, 8), jednak dają identyczny rozkład sumy dwóch kości. W~nardach nieistotna jest suma, ale~pojedyncze rzuty, dlatego kości te nie mają zastosowania. Można łatwo dowieść (choćby za~pomocą rozkładu wielomianów), że~kości Sichermana stanowią jedyną alternatywę dla~dwóch kostek K6, ie.~nie da się zaproponować układu wartości na~dwóch kostkach K6, który~byłby inny, niż kości klasyczne i~kości Sichermana, a~dawałby ten sam rozkład (za wyjątkiem trywialnych przykładów typu kości 0-5 i~2-7).

Nick Ballard zaproponował użycie kości Sichermana do~nard i~nazwał ten wariant Sichgammonem. Film jest dostępny pod~adresem #link("https://www.youtube.com/watch?v=8-ROEd244tw").

== Co jest ważniejsze: reguła Crawforda, czy reguła Murphyego?

Dobre pytanie, teoretycznie może wystąpić tu problem, reguła Crawforda zabrania podwajania, a~reguła Murphyego wymusza je.

#przyklej[W praktyce:]

+ Reguła Murphyego jest nieużywana i~niezalecana.
+ Reguła Crawforda bywa stosowana w~meczach, zaś reguła Murphyego w~graniu na~pieniądze (patrz następne pytanie).
+ W~ostateczności: reguła Murphyego dotyczy każdej gry, zaś reguła Crawforda jednej gry w~meczu. Osobiście zalecam zatem przewagę reguły Crawforda, wszakże paremia prawnicza głosi: _lex specialis derogat lex generalis_, czyli prawo szczególne uchyla prawo ogólne.

== O~co chodzi z~meczami i~grą na~pieniądze?

Jeżeli gramy gry do~określonego wyniku (eg.~do~siedmiu punktów), to jest to gra meczowa i~gracz, który osiągnie (lub przekroczy) ustalony wcześniej limit, wygrywa cały mecz.

Zgodnie z~luudoo.com#footnote[#link("https://luudoo.com/media/wysiwyg/downloads/instructions/Backgammon-rules_-Instructions-for-customised-backgammon-_A4-print_.pdf")] gra, która~nie jest meczowa ("match play"), jest grą na~pieniądze ("money play"), niezależnie (sic!), czy jest to hazard na~pieniądze, czy nie. Każdy punkt liczy się tak samo i~każda rozgrywka jest osobną grą. W~przypadku hazardu na~pieniądze, każdy punkt oznacza określoną kwotę – eg.~wygranie dwoma punktami oznacza zapłatę 20 złotych, jeżeli gracze umówili się na~10 zł za~punkt.

Rodzaj gry wpływa na~strategię, szczególnie sięganie po~kość dublującą. Gracz bliski wygranej meczu (Luudoo podaje przykład wyniku 7:5 przy grze do~9) niechętnie będzie po~taką kość sięgał, natomiast jeżeli gra będzie grą hazardową na~pieniądze, to i~zachęta do~użycia kości podwajającej będzie większa.

== Co z~regułą "dotknięta idzie, postawiona stoi"?

Nardy to nie szachy i~tutaj można przesunąć piony, pomyśleć, cofnąć ruch, zrobić inny... Ruch zostaje zakończony przez naciśnięcie zegara lub~(w~razie jego braku) przez zabranie kości z~planszy.

== Czym był system 12-punktowy?

Zgodnie z~bkgm.com#footnote[#link("https://www.bkgm.com/faq/BasicRules.html#what_is_the_24_point_numbering_system_")] kiedyś (do~lat 1980) numerowano pola od~1 do~12 i~przeciwne pola miały te same numery. W~celu odróżnienia pól stosowano prefiksy, eg.~`W12` lub~`B12`.

== Czym różnią się krótkie i~długie nardy?

Krótkie nardy to wschodnia (eg.~rosyjska) nazwa na~grę, której dotyczą niniejsze zasady. Ma ona kontrastować z~nazwą "długie nardy", czyli inną grą na~tej samej planszy. Zasady w~długie nardy opisuje angielska wikipedia#footnote[#link("https://en.wikipedia.org/wiki/Long_Nardy")]. Podstawowe różnice to zgodny ruch (obaj gracze idą w~tę samą stronę) i~pozycja początkowa z~15 pionami na~jednym polu.

== Jakie zasady panują na~turniejach?

#przyklej[Na~turniejach obowiązują dodatkowe zasady dotyczące używanego języka, czy przerw. Turnieje mają również swój preferowany sprzęt:]

- plansza powinna być duża (w~tzw. rozmiarze turniejowym) z~dużymi pionami, czyli:
	- 440x550-660x880 mm dla~turniejów BGWC#footnote[#link("https://www.backgammonworldchampionship.com/s/1-BGWC-2025-Tournament-Rules-A4-BW.pdf")],
	- dostosowana do~pionów o~średnicy 37-50 mm dla~turniejów WBGF#footnote[#link("https://wbgf.info/tournament-rules/")];
- kubki powinny mieć wewnętrzny rant poprawiający losowość rzutu;
- kości powinny być precyzyjne ("precision dice").

#przyklej[Dodatkowo określa się różne przepisy dotyczące sytuacji spornych i~wątpliwych, jak eg.~czy w~sytuacjach awaryjnych graczowi przysługuje dodatkowa przerwa. Opisuje się też~zasady związane z~uczciwą rozgrywką, takie jak:]

- zegar i~piony obsługujemy tą samą ręką,
- kiedy można używać jakiego sprzętu elektronicznego (zapobieganie dopingowi elektronicznemu).

Wiele z~tych zasad tutaj pominięto. Przed turniejem warto sprawdzić, jakie zasady na~nim panują.

== A jest dostępna jakaś bardziej wizualna forma?

Jasne, turnieje, o~których wspominałem w~poprzednim pytaniu czasami można oglądać na~YouTubie, eg.~finał mistrzostw BGWC jest pod adresem #link("https://www.youtube.com/watch?v=Ow_-WNcpLKo"). Na~tego typu filmach można w~praktyce zobaczyć, jak ruszają się piony, czy też~jak używa się zegara.

= Kreditsy

#przyklej[Zdjęcia pochodzą z~Wikipedii i~Wikimedia Commons.]

Grafiki wektorowe są dziełem autora (czyli moim).