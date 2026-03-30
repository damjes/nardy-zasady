#import "/functions.typ": *

== Notacja ruchu

Ruch zapisuje się, podając pola rozdzielone łamaną kreską (`/`). W~przypadku powtórzeń, zapisuje się ich liczbę w~nawiasach. Bicie zapisuje się asteryskiem (`*`) po~numerze pola.

Bandę oznacza się jako `bar`, zaś dwór jako `off`. Osobiście dopuszczam też~stosowanie łącznika-minusa (ewentualnie dywizu lub~podobnego znaku). Kontekst zawsze wskazuje, z~czym mamy do~czynienia – `bar` zawsze występuje przed łamaną kreską, zaś `off` zawsze występuje po~łamanej kresce.

`0` (lub `fan`) oznacza niemożliwość wprowadzenia piona.

Numeracja pól jest stosowana dla~bieżącego gracza (aktualny gracz porusza się w~kierunku malejących numerów pól).

#callout_example()[
- `8/4 6/4` oznacza ruch z~pola 8 na~pole 4 oraz~ruch z~pola 6 na~pole 4.
- `13/7*5` oznacza, że~pion z~pola 13 dokonał zbicia na~polu 7 i~następnie został umieszczony na~polu 5.
- `6/4(3) 13/11` oznacza ruch trzech pionów z~pola 6 na~pole 4, zaś pion z~pola 13 został umieszczony na~polu 11.
- `bar/22 17/9` oznacza, że~pion z~bandy został wprowadzony na~pole 22, zaś pion z~pola 17 został umieszczony na~polu 9.
- `5/off 2/off` oznacza, że~piony z~pól 5 i~2 zostały wprowadzone na~dwór.
]
