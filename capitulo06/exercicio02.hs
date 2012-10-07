{-
defina uma funcao atras_13 que dada letra minuscula retorna
a letra 13 posicoes atras

atras_13 'e'
'r'
atras_13 'g'
't'
-}
import Test.Hspec
import Data.Char


atras_13 x = chr $ ord x + 13



main = hspec $ do
    describe "1" $ do

        it "e gera r" $
            atras_13 'e' `shouldBe` 'r'

        it "g gera t" $
            atras_13 'g' `shouldBe` 't'  