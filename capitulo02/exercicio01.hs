{-
calcule a soma entre os numeros n1 e n2
incluindo e excluindo seus limites
-}

somainc' a b 
	| a == b    = a
	| otherwise = somainc' a (b - 1) + b

somainc'' a b
	| a >  b    = 0
	| a == b    = a
	| otherwise = somainc'' (a + 1) (b - 1) + a + b

somainc''' a b =
	((b - a + 1) * (a + b) / 2)  

somainc = somainc'''

somaexc' a b
	| a >  b - 2  = 0
	| a == b - 2  = a + 1
	| otherwise   = somaexc' a (b - 1) + (b - 1)

somaexc'' a b 
	= somainc (a + 1) (b - 1)

somaexc = somaexc''


main = print
	[
	(True)

	, (somainc 1 1)  == 1
	, (somainc 1 2)  == 3
	, (somainc 1 4)  == 10
	, (somainc 1 5)  == 15
	, (somainc 5 10) == 45

	, (somaexc 1 2)  == 0
	, (somaexc 1 3)  == 2
	, (somaexc 1 6)  == 14
	, (somaexc 5 10) == 30
	]
