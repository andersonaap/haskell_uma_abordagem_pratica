{-
escrever potencia_2
que informe o quadrado deles
-}
{-
escrever potencia_4
que informe a quarta potencia 
reutilizando a potencia_2
-}

potencia_2'    x = Prelude.product [x, x]
potencia_2''   x = product [x, x]
potencia_2'''  x = (Prelude.*) x x
potencia_2'''' x = x * x

potencia_2 x = (*) x x

potencia_4 x = potencia_2 (potencia_2 x)

main = print
	[
	  potencia_2 2
	, potencia_2 3
	, potencia_2 4

	, potencia_4 2
	, potencia_4 3
	, potencia_4 4
	]