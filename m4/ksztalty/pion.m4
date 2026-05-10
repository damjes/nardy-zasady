ifdef(`__PION_M4__', `m4exit', `define(`__PION_M4__')')

define(`ROZMIAR_PIONA', `100')dnl musi być parzyste!
define(`OBRAMOWANIE_PIONA', `2')dnl musi być parzyste!
define(`ROZMIAR_FINGERDISH', `70')dnl musi być parzyste!

define(`PION', `
	<circle
		class="pion-$1"
		cx="eval(POZ_X + ROZMIAR_PIONA/2)"
		cy="eval(POZ_Y + ROZMIAR_PIONA/2)"
		r="eval((ROZMIAR_PIONA-OBRAMOWANIE_PIONA)/2)"
		stroke-width="OBRAMOWANIE_PIONA" />
	<circle
		class="pion-$1 fingerdish"
		cx="eval(POZ_X + ROZMIAR_PIONA/2)"
		cy="eval(POZ_Y + ROZMIAR_PIONA/2)"
		r="eval(ROZMIAR_FINGERDISH/2)" />
')

DEFINIUJ_WYMIARY_ELEMENTU(`PION', `ROZMIAR_PIONA', `ROZMIAR_PIONA')
