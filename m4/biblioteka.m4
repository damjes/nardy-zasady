ifdef(`__BIBLIOTEKA_M4__', `m4exit', `define(`__BIBLIOTEKA_M4__')')

changecom(`##')

define(`IDZ_XY', `
	define(`POZ_X', eval(POZ_X + $1))
	define(`POZ_Y', eval(POZ_Y + $2))
')

define(`DEFINIUJ_WYMIARY_ELEMENTU', `
	define(`$1_SZER', eval($2))
	define(`$1_WYS', eval($3))
')

define(`IDZ', `
	IDZ_XY(`eval($2 * $1_SZER)', `eval($3 * $1_WYS)')
')

define(`NAGLOWEK', `
	<svg xmlns="http://www.w3.org/2000/svg" width="800" height="800">
		<style>
			include(`plansza.css')
		</style>
')
define(`STOPKA', `</svg>')