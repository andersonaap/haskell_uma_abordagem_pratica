{-
implemente uma funcao mod
resto da divisao de inteiros
sem usar o mod do interpretador
-}

resto dndo dsor
	| dndo < dsor = dndo
	| otherwise   = resto (dndo - dsor) dsor

main = print
	(
	  resto 1 3 == 1
	, resto 3 3 == 0
	, resto 5 3 == 2

	, resto 12 7 == 5
	, resto 27 9 == 0
	, resto 9 11 == 9
	, resto 21 6 == 3
	)