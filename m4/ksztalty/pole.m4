ifdef(`__POLE_M4__', `m4exit', `define(`__POLE_M4__')')

include(`pion.m4')

define(`DLUGOSC_POLA', eval(ROZMIAR_PIONA * 5))
define(`DLUGOSC_POLA_BEZ_PIONA', eval(DLUGOSC_POLA - ROZMIAR_PIONA))

define(`POLE', `
	define(`Y_PUNKT', ifelse($2, gora, POZ_Y, eval(POZ_Y+DLUGOSC_POLA)))
	define(`Y_PODSTAWA', ifelse($2, gora, eval(POZ_Y+DLUGOSC_POLA), POZ_Y))
	<polygon
		class="pole-$1"
		points="
			POZ_X, Y_PODSTAWA
			eval(POZ_X+ROZMIAR_PIONA), Y_PODSTAWA
			eval(POZ_X+ROZMIAR_PIONA/2), Y_PUNKT
			"
		/>
')

DEFINIUJ_WYMIARY_ELEMENTU(`POLE', `ROZMIAR_PIONA', `DLUGOSC_POLA')
