include(`include.m4')

NAGLOWEK

define(`POZ_X', 150)
define(`POZ_Y', 150)

PION(`a')
IDZ(`PION', 0, 1)
PION(`b')

define(`POZ_X', 300)
define(`POZ_Y', 150)

POLE(a, gora)
IDZ(`POLE', 1, 0)
POLE(b, gora)
IDZ(`POLE', 1, 0)
POLE(b, dol)

STOPKA