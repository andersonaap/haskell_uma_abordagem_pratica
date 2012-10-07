{-
numero2 que com dois caracteres retorna o inteiro de ambos
numero2 '2' '3'
23
numero2 '4' '1'
41
numero2 'a' '0'
0
-}
import Test.Hspec
import Test.HUnit
import Data.Char


numero2 x y
    | inv x     = 0
    | inv y     = 0
    | otherwise = num x * 10 + num y
    where 
        inv c = c < '0' || c > '9' 
        num n = (ord n - ord '0') 


main = hspec $ do
    describe "Valores plausiveis" $ do

        it "numero2 '2' '3'" $
            numero2 '2' '3' @?= 23

        it "numero2 '4' '1'" $
            numero2 '4' '1' @?= 41

    describe "proibidos" $ do

        it "numero2 'a' '0'" $
            numero2 'a' '0' @?= 0

        it "numero2 '1' 'a'" $
            numero2 '1' 'a' @?= 0

      