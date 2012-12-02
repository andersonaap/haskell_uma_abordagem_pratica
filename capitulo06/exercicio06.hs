{-
Defina a funcao de uma calculadora com notacao prefix
-}
data Expr = List Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr | Div Expr Expr


avalia :: Expr -> Int
avalia (List x)                 = x
avalia (Add  (List x) (List y)) = x + y
avalia (Sub  (List x) (List y)) = x - y
avalia (Mult (List x) (List y)) = x * y
avalia (Div  (List x) (List y)) = x `div` y


main = do
    print $ avalia (List 9) 
    print $ avalia (Add  (List 9) (List 3))
    print $ avalia (Sub  (List 9) (List 3))
    print $ avalia (Mult (List 9) (List 3))
    print $ avalia (Div  (List 9) (List 3))
