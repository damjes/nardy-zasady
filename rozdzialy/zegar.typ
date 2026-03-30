= Zegar <zegar>

Do~gry można (nie jest to wymagane) użyć specjalnego zegara (znanego też~jako _zegar szachowy_ lub~_game clock_, patrz rycina poniżej). Są to dwa zegary zespolone tak, że~w~czasie normalnej pracy jeden z~nich odmierza czas w~dół, a~drugi jest zatrzymany. Istnieją zegary, w~których powyższe zachowanie zależy od~wybranego trybu.

#obrazek("obrazki/DGT_2010_digital_chess_clock.ajb.jpg", image-width: 80%, margin: 0.2em)

Każdy z~graczy dysponuje przyciskiem do~zatrzymania swojego zegara i~równoczesnego uruchomienia zegara przeciwnika. Często przyciski te są zespolone w~jeden duży przełącznik (biały element na~górze na~rycinie powyżej). Gracz, któremu jako pierwszemu skończy się czas, przegrywa cały mecz, chyba, że ma gwarantowane zwycięstwo. Zwykle zegar nastawia się na~2 minuty na~każdy punkt oraz~12 sekund tzw. Simple Delay (proste opóźnienie) niezależnie od~limitu punktów.

#callout_example()[
Jeżeli gracze grają do~5 punktów, to każdy z~graczy zaczyna z~10 minutami na~zegarze i~12 sekundami Simple Delay.
]

#include "zegar/etykieta.typ"

#include "zegar/simple-delay.typ"

#include "zegar/alternatywy.typ"

#include "zegar/korzysci.typ"

#include "zegar/stosowanie-na-turniejach.typ"
