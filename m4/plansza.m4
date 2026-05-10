changecom(`##')

define(`ROZMIAR_PIONA', `100')
define(`OBRAMOWANIE_PIONA', `2')dnl musi być parzyste!
define(`ROZMIAR_FINGERDISH', `70')dnl musi być parzyste!

define(`GOTO', `
	define(`POZ_X', eval(POZ_X + $1))
	define(`POZ_Y', eval(POZ_Y + $2))
')

define(`PION', `
	<circle class="$1" cx="POZ_X" cy="POZ_Y" r="eval((ROZMIAR_PIONA-OBRAMOWANIE_PIONA)/2)" stroke-width="OBRAMOWANIE_PIONA" />
	<circle class="$1 fingerdish" cx="POZ_X" cy="POZ_Y" r="eval(ROZMIAR_FINGERDISH/2)" />
	GOTO(DELTA_X, DELTA_Y)
')
define(`PION_A', `PION(`pion-a')')
define(`PION_B', `PION(`pion-b')')

define(`POZ_X', `150')
define(`POZ_Y', `150')
define(`DELTA_X', `0')
define(`DELTA_Y', `ROZMIAR_PIONA')

<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600">
	<link xmlns="http://www.w3.org/1999/xhtml" rel="stylesheet" href="plansza.css" type="text/css" />
	PION_A
	PION_B
</svg>
