== Simple Delay <simple-delay>

Simple Delay (znany też~jako US Delay) działa w~ten sposób, że~zegar odmierza ten czas jako pierwszy. Jeżeli gracz zdąży w~tym czasie wykonać ruch, nie odejmuje się czasu z~jego zegara, zaś urządzenie zaczyna odmierzać Simple Delay przeciwnikowi. Jeżeli czas Simple Delay się skończy, czas jest brany z~głównego czasu danego gracza.

#callout_example()[
Początek gry. Gra do~5 punktów, zatem ustawienie zegara to 10 minut + 12 sekund Simple Delay. Gracz wykonał ruch w~7 sekund, zatem jego zegar dalej wskazuje `10:00`. Jego przeciwnik wykonał ruch w~20 sekund, co oznacza, że~zużył on całe 12 sekund Simple Delay, a~pozostałe 8 sekund zużył on z~czasu głównego, zatem po~ruchu jego zegar wskaże `09:52`, czyli pozostało mu 9 minut i~52 sekundy.
]
