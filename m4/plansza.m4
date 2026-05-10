changecom(`##')

define(`ROZMIAR_PIONA', `100')dnl musi być parzyste!
define(`OBRAMOWANIE_PIONA', `2')dnl musi być parzyste!
define(`ROZMIAR_FINGERDISH', `70')dnl musi być parzyste!

define(`GOTO', `
	define(`POZ_X', eval(POZ_X + $1))
	define(`POZ_Y', eval(POZ_Y + $2))
')

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
	GOTO(PION_DELTA_X, PION_DELTA_Y)
')

define(`POZ_X', `150')
define(`POZ_Y', `150')
define(`PION_DELTA_X', `0')
define(`PION_DELTA_Y', `ROZMIAR_PIONA')

<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600">
	<style>
		include(`plansza.css')
	</style>
	PION(a)
	PION(b)
</svg>
