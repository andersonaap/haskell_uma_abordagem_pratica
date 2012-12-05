
{-
fat que calcula fatorial de numero de precisao arbitraria
-}

fat 1 = 1 :: Integer
fat x = x * fat (x - 1)


main = 
    print (fat 10) >>= \_ -> 
    print (fat 20) >>= \_ -> 
    print (fat 30)

