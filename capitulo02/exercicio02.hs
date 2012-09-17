{-
dados os numeros n1 e n2
encontrar os multiplos de n3
que se encontram neste intervalo
-}

mult3 x = mod x 3 == 0

aux1 a b
	| mult3 a   = [a] ++ mults (a + 1) b
	| otherwise =        mults (a + 1) b

aux2 a
	| mult3 a   = [a]
	| otherwise = []

mults' a b
	| a <  b    = aux1 a b
	| a == b    = aux2 a 
	| otherwise = []


mults''  a b = filter (\x -> mult3 x) [a..b]
mults''' a b = filter mult3 [a..b]
mults'''' a b = [x | x <- filter mult3 [a..b]]


mults = mults'

main =
	print
	(
	  mult3 3 == True
	, mult3 4 == False
	, mult3 5 == False
	, mult3 6 == True

	, mults 3 3  == [3]
	, mults 2 4  == [3]
	, mults 2 6  == [3, 6]
	, mults 1 10 == [3, 6, 9]
	, mults 5 15 == [6, 9, 12, 15]
	)