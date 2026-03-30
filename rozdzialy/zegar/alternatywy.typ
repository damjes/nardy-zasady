#import "/functions.typ": *

== Alternatywy do~Simple Delay

#callout_attention()[
Mogą występować pewne różnice w~implementacji niżej wymienionych systemów. Niemniej osobiście przyjmuję, że~dana nazwa odpowiada podanemu opisowi, w~szczególności mówiąc o~systemach Fischera i~Bronsteina mam na~myśli doliczanie czasu *po~ruchu*, chociaż prawdopodobnie można się spotkać też~z~odwrotną interpretacją. Osobiście przyjmuję, że~doliczanie czasu *przed* ruchem wymaga wskazania _explicite_ (eg.~_System Fischera z~doliczaniem przed_ lub~w~skrócie _Fischer przed_).
]

=== System Fischera

W systemie Fischera główny czas gracza jest zużywany od~razu. Po~ruchu gracza (ie.~po~naciśnięciu przycisku) zostaje doliczony stały, ustalony wcześniej czas.

#callout_example()[
Gra toczy się wg ustawień 14 minut + 12 sekund w~systemie Fischera. Gracz na~zegarze ma wskazanie `13:59` (co oznacza pozostały czas 13 minut i~59 sekund). Jeżeli gracz wykona ruch w~4 sekundy, to jego zegar wskaże `13:55`, a~po~naciśnięciu przycisku zostanie doliczone jeszcze 12 sekund i~zegar wskaże `14:07`.
]

#callout_attention()[
W~systemie Fischera nie stanowi problemu sytuacja, w~której gracz ma do~dyspozycji więcej czasu, niż na~początku rozgrywki.
]

=== System Bronsteina

System Bronsteina tym różni się od~systemu Fischera, że~czas nie może ulec wydłużeniu.

#callout_example()[
Dla~przykładu powyżej, jeżeli zegar gracza pokazuje `13:59` i~gracz wykona ruch poniżej 12 sekund (eg.~w~2 sekundy), to zegar po~ruchu dalej będzie wskazywał `13:59`. Dla~ruchu trwającego 15 sekund ostateczne wskazanie wyniesie `13:56`.
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
