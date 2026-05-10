ifdef(`__WYMIARY_M4__', `m4exit', `define(`__WYMIARY_M4__')')

define(`USTAL_XY', `
	define(`POZ_X', $1)
	define(`POZ_Y', $2)
')

USTAL_XY(0, 0)

define(`IDZ_XY', `
	define(`POZ_X', eval(POZ_X + $1))
	define(`POZ_Y', eval(POZ_Y + $2))
')

define(`DEFINIUJ_WYMIARY_ELEMENTU', `
	define(`$1_SZER', eval($2))
	define(`$1_WYS', eval($3))
')

define(`IDZ_EL', `
	IDZ_XY(`eval($2 * $1_SZER)', `eval($3 * $1_WYS)')
')

define(`POZ_PUSH', `
	pushdef(`POZ_X', POZ_X)
	pushdef(`POZ_Y', POZ_Y)
')
define(`POZ_POP', `
	popdef(`POZ_Y')
	popdef(`POZ_X')
')

define(`NAZWIJ_POZ', `
	define(`POZ_MEM_'$1`_X', POZ_X)
	define(`POZ_MEM_'$1`_Y', POZ_Y)
')