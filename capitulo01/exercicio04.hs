{-
implementar um funcao de OU EXCLUSIVO
-}

xor1 a b = (a && not b) || (b && not a)

xor2 a b = (a || b) && not (a && b)

xor3 a b
	| a && not b = True
	| b && not a = True
	| otherwise  = False

xor4 a b = a /= b
xor5 a b = (/=) a b
xor6 a = (/=) a
xor7 = (/=) :: Bool -> Bool -> Bool

xor8 True False = True
xor8 False True = True
xor8 _ _ = False

xor9 True a = not a
xor9 False a = a


xor = xor1

main = print
	[
	  xor False False
	, xor False True
	, xor True  False
	, xor True  True
	]
