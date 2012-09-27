{-
dados 3 numeros
informar
3 - todos iguais
2 - dois iguais
0 - nenhum igual
-}
compnums1 a b c = 
	if a == b && b == c then 3
	else if a == b || b == c || c == a then 2
	else 0

compnums2 a b c
	| a == b && b == c           = 3 
	| a == b || b == c || c == a = 2 
	| otherwise                  = 0


compnums a b c = compnums2 a b c

main = print
	[
	  (compnums 1 1 1)
	, (compnums 1 1 2)
	, (compnums 1 2 1)
	, (compnums 2 1 1)
	, (compnums 1 2 3)
	]
