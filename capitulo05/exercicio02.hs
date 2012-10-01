{-
Dada uma lista de numeros, retornar
uma lista de tupla2 com a traducao
[1,2,6] 
[(1,"um"),(2,"dois"), (6,"seis")]
-}
import Test.HUnit

dic_10 [] = []
dic_10 (x:xs) = (x, texto):dic_10 xs
	where
		texto
			| x == 1 = "um"
			| x == 2 = "dois"
			| x == 3 = "tres"
			| x == 4 = "quatro"
			| x == 5 = "cinco"
			| x == 6 = "seis"
			| x == 7 = "sete"
			| x == 8 = "oito"
			| x == 9 = "nove"
			| x == 0 = "zero"

main = do
	runTestTT $ [(1, "um")] ~=? dic_10 [1]
	runTestTT $ [(2, "dois")] ~=? dic_10 [2]
	runTestTT $ [(2, "dois"), (1, "um")] ~=? dic_10 [2, 1]
	runTestTT $ 
		[
		  (0, "zero")
		, (1, "um")
		, (2, "dois")
		, (3, "tres")
		, (4, "quatro")
		, (5, "cinco")
		, (6, "seis")
		, (7, "sete")
		, (8, "oito")
		, (9, "nove")
		] 
		~=? dic_10 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
