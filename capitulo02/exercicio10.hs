{-
10
calcule o mdc entre 2 numeros
caso contrario 0
-}
import Data.List

auxmdc a b i
	| (divisor i a) && (divisor i b) = i
	| otherwise                      = auxmdc a b (i - 1)
	where divisor i x = x `mod` i == 0

mdc a b = auxmdc a b minimo
	where minimo = min a b


main = print
	(
	  True
	, mdc 1 1 == 1
	, mdc 1 2 == 1
	, mdc 2 2 == 2
	, mdc 2 3 == 1
	, mdc 4 2 == 2
	, mdc 45 30 == 15
	)
