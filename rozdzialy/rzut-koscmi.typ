#import "/functions.typ": *

= Rzut kośćmi

Możliwości ruchu w~grze wyznaczane są przez rzut kośćmi. Gracze rzucają na~początku swojej tury dwiema kośćmi. Każda kość oznacza o~ile można przesunąć pojedynczego piona. W~wypadku wyrzucenia dubletu (ie.~tej samej wartości na~obu kościach) rzut ulega podwojeniu.

#callout_example()[
Jeżeli gracz wyrzuca `5-2`, to nie ma podwojenia.

Jeżeli gracz wyrzuca `5-5`, to dwa ruchy o~5 zostają podwojone do~czterech ruchów o~5. Zatem wyrzucenie danej wartości dwukrotnie w~ramach jednego rzutu oznacza cztery ruchy o~tę wartość.

#figure(image("../schematy.pdf", page: 7, width: 60%))
]

Wyjątek stanowi pierwsza tura. Każdy z~graczy wykonuje wtedy rzut jedną kością. Zaczyna ten gracz, na~którego kości wypadła większa wartość. Gracz wykorzystuje oba wyniki do~ruchów, nie wykonuje się ponownego rzutu (jak przed kolejnymi turami). W~przypadku wystąpienia dubletu każdy z~graczy powtarza rzut.

Można przesunąć tego samego piona wielokrotnie, o~ile robi się to etapami.

#callout_example()[
#przyklej[Pion jest na~polu 22, gracz chce go przesunąć na~pole 14, na~kościach wypadło `5-3`:]

- gracz może wykonać ruch o~3 (o~ile może stanąć na~polu 19), a~następnie stanąć na~polu 14 (również w~miarę możliwości);
- gracz może wykonać ruch o~5 (stanąć w~miarę możliwości na~17), a~następnie (jeżeli możliwe) na~14;
- jeżeli pola 17 oraz~19 są zajęte przez piony przeciwnika (oba więcej, niż jednym), to dla~tego rzutu ruch z~pola 22 do~pola 14 jest niemożliwy, patrz rycina;
#figure(image("../schematy.pdf", page: 8, width: 100%))
- oczywiście, jeżeli pole 14 jest zajęte przez piony (co najmniej dwa) przeciwnika, to ruch na~pole 14 jest niemożliwy, niezależnie od~zajętości innych pól.
]

Gracz ma obowiązek najpierw wprowadzić wszystkie zbite piony. Kolejka gracza kończy się, jeśli gracz ma niewyprowadzone piony, ale~nie może ich wyprowadzić. W~szczególności, gdy na~wszystkich polach domu przeciwnika (19-24) ma on ustawione po~co najmniej dwa piony, czasami pomija się także sam rzut – zdaje się to być nieformalną praktyką, szeroko stosowaną mimo braku oficjalnego skodyfikowania (przynajmniej ja na~takie nie trafiłem).

Przy grze z~zegarem, jeżeli wiadomo jest, że~ruch jest niemożliwy, gracz powinien po~prostu zakończyć turę naciskając zegar, chociaż ci, którzy lubią życie na~krawędzi, mogą użyć kości dublującej. Obsługa zegara jest istotna, ponieważ pozwala ona na~poprawne odliczanie czasu w~przypadku stosowania systemów Simple Delay czy też Fischera (patrz sekcja @simple-delay i dalsze).

#callout_example()[
Jeżeli gracz wyrzuci 3, to może wejść na~planszę i~poruszyć się o~trzy pola, ie.~wejść na~pole 22 (o~ile może na~nim stanąć).
]

#figure(image("../schematy.pdf", page: 9, width: 100%))

Gracz ma obowiązek wykonać wszystkie ruchy, a~jeżeli nie jest to możliwe, to najwięcej ruchów, ile jest możliwe. W~przypadku możliwości ruchu jedną albo drugą kością należy wybrać wyższy wynik rzutu. Jeżeli ruch wartością z~jednej kości jest niemożliwy, ale~stanie się możliwy po~odpowiednim ruchu wartością z~drugiej kości, taki ruch z~drugiej kości staje się obowiązkowy. Pogorszenie sytuacji na~planszy nie stanowi usprawiedliwienia. Niemożliwe do~wykonania ruchy przepadają.

Gracz może (po~spełnieniu warunków) wyprowadzić piona na~dwór wtedy, kiedy dystans do~końca planszy (czyli numer pola) odpowiada wyrzuconej wartości. W~przypadku braku możliwości ruchu, spowodowanego tym, że~piony stoją za~blisko końca planszy, dopuszcza się wyprowadzenie na~dwór piona najdalszego.

#callout_example()[
Gracz ma tylko po~trzy piony na~polach 1 i~2 i~wyrzuca `5-5`. Nie może wyprowadzić piona z~pustego pola 5 ani nie może przesunąć pionów o~5, zatem dokonuje wyprowadzenia czterech pionów – trzech z~pola 2 i~jednego z~pola 1. Jest to jedyny legalny ruch (patrz rycina).
#figure(image("../schematy.pdf", page: 10, width: 80%))
]

#include "rzut-koscmi/etykieta.typ"
