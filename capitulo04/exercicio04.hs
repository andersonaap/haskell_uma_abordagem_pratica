{-
Entrando 4 valores, saindo uma tupla ordenada.
-}
import Test.HUnit
import Data.List


ordena a b c d = 
	let lista = sort [a, b, c, d]
	in  (lista!!0, lista!!1, lista!!2, lista!!3)


main = do
	runTestTT $ (0, 2, 3, 8) ~=? ordena 3 0 2 8
	runTestTT $ (1, 5, 6, 8) ~=? ordena 8 1 5 6

