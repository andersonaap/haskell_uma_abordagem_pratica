{-
Dados 3 lados de um triangulo
informar se e equilatero, isoceles ou escaleno
e a soma dos lados
-}
import Test.HUnit
import Data.List

triangulo a b c
	| q == 1 = ("equilatero", s)
	| q == 2 = ("isoceles",   s)
	| q == 3 = ("escaleno",   s)
	where q = length . group . sort $ [a, b, c]
	      s = a + b + c

main = do
	runTestTT $ ("equilatero", 18) ~=? triangulo 6 6 6
	runTestTT $ ("isoceles",   19) ~=? triangulo 6 7 6
	runTestTT $ ("escaleno",   21) ~=? triangulo 8 7 6

