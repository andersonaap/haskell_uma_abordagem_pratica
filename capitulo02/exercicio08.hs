{-
faca uma funcao mmc entre 
3 numeros inteiros
-}

maximo a b c = max a (max b c)
multiplo num d = mod num d == 0

aux a b c i
	| (multiplo i a) && (multiplo i b) && (multiplo i c) = i
	| otherwise = if i < a*b*c then aux a b c (i + 1) else i

mmc a b c = aux a b c (maximo a b c)



main = print
	(
	  maximo 3 5 4 == 5
	, multiplo 8 3 == False
	, multiplo 9 3 == True

	, mmc 1 1 1 == 1
	, mmc 1 2 3 == 6
	, mmc 1 2 4 == 4
	, mmc 3 5 1 == 15
	, mmc 2 4 5 == 20
	, mmc 3 5 7 == 105
	)
