{-
escrever x_menor e x_maior retorne 
a menor e a maior raiz de uma equacao do 2o grau
-b +- sqr (b^2 -4ac) / 2a
-}

x_menor (a, b) = if a < b then a else b
x_maior (a, b) = if a > b then a else b

-- ax2 + bx + c = 0 
fun2g :: Float -> Float -> Float -> (Float, Float)
fun2g a b c =
	(
		  ((- b) + (sqrt (b ^ 2 - 4 * a * c) )) / (2 * a) 
		, ((- b) - (sqrt (b ^ 2 - 4 * a * c) )) / (2 * a) 
	)

main = print
	[ 	
	  (x_menor (fun2g (-1) 0 4),  x_maior (fun2g (-1) 0 4))
	, (x_menor (fun2g (-1) 0 9),  x_maior (fun2g (-1) 0 9))
	, (x_menor (fun2g 1 (-3) 0), x_maior (fun2g 1 (-3) 0))
	, (x_menor (fun2g 1 (-7) 6), x_maior (fun2g 1 (-7) 6))
	, (x_menor (fun2g 1 10 25), x_maior (fun2g 1 10 25))
	, (x_menor (fun2g 1 6 9), x_maior (fun2g 1 6 9))
	, (x_menor (fun2g 4 8 4), x_maior (fun2g 4 8 4))
	, (x_menor (fun2g (-1) 9 (-18)), x_maior (fun2g (-1) 9 (-18)))
	, (x_menor (fun2g 4 8 (-5)), x_maior (fun2g 4 8 (-5)))
	]
