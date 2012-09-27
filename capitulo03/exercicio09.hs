{-
raiz quadrada inteira
-}
auxraizquadrada a i
	| i * i > a = auxraizquadrada a (i - 1)
	| otherwise = i

raizquadrada a = auxraizquadrada a a

main =
	print
	[
	raizquadrada 1 == 1
	, raizquadrada 4 == 2
	, raizquadrada 5 == 2
	, raizquadrada 9 == 3
	, raizquadrada 24 == 4
	]