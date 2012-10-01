{-
Dada uma lista, obter o maior elemento
retornando uma tupla com o valor e a posicao
-}
import Test.HUnit


mm (x:[])       = x
mm (x:y:ns)
	| x > y     = mm (x:ns)
 	| otherwise = mm (y:ns)

pp n (x:xs)
	| n == x    = 0
	| otherwise = 1 + (pp n xs)

maior xs = (m, p) 
	where
		m = mm xs
		p = pp m xs


main = do
	runTestTT $ (2, 0) ~=? (maior [2])
	runTestTT $ (2, 0) ~=? (maior [2, 1])
	runTestTT $ (3, 1) ~=? (maior [2, 3])
	runTestTT $ (4, 2) ~=? (maior [2, 3, 4])
	runTestTT $ (9, 6) ~=? (maior [5, 2, 1, 7, 4, 6, 9, 8])
