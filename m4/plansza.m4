changecom(`##')

define(`ROZMIAR_PIONA', `100')
define(`OBRAMOWANIE_PIONA', `2')dnl musi być parzyste!
define(`ROZMIAR_FINGERDISH', `70')dnl musi być parzyste!

define(`GOTO', `
	define(`POZ_X', eval(POZ_X + $1))
	define(`POZ_Y', eval(POZ_Y + $2))
')

define(`PION', `
	<circle cx="POZ_X" cy="POZ_Y" r="eval((ROZMIAR_PIONA-OBRAMOWANIE_PIONA)/2)" fill="$1" stroke="$2" stroke-width="OBRAMOWANIE_PIONA" />
	<circle cx="POZ_X" cy="POZ_Y" r="eval(ROZMIAR_FINGERDISH/2)" fill="$3" />
	GOTO(DELTA_X, DELTA_Y)
')
define(`PION_A', `PION(`hsl( 45, 100%, 90%)', `hsl( 45,  60%, 60%)', `hsl( 45,  60%, 75%)')')
define(`PION_B', `PION(`hsl(  5, 100%, 45%)', `hsl(  5, 100%, 35%)', `hsl(  5, 100%, 30%)')')

define(`POZ_X', `150')
define(`POZ_Y', `150')
define(`DELTA_X', `0')
define(`DELTA_Y', `ROZMIAR_PIONA')

<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600">
	PION_A
	PION_B
</svg>
