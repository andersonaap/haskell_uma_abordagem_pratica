
import Test.Hspec

type Telefones = [(Nome, Telefone)]
type Nome      = String
type Telefone  = String
{-
a) funcao telefone. retorna o telefone associado a um nome da lista.
   senao "telefone desconhecido"
b) novo_telefone. dado para, faz upinsert na lista 
-}

base :: Telefones
base = 
    [ ("Andre",   "1111-2222")
    , ("Barbara", "2222-3333")
    , ("Carlos",  "3333-4444")
    , ("Daniela", "4444-5555")
    ]

telefone :: Nome -> Telefones -> Telefone
telefone nome []     = "Telefone desconhecido"
telefone nome (x:xs)
    | nome == fst x = snd x
    | otherwise     = telefone nome xs


telefone_novo :: (Nome, Telefone) -> Telefones -> Telefones
telefone_novo (n, t) [] = (n, t):[]
telefone_novo (n, t) (x:xs)
    | fst x == n = (n, t):xs
    | otherwise  = x:telefone_novo(n, t) xs


main = hspec $ do

    describe "funcao telefone" $ do

        it "dado Barbara deve retornar 2222-3333" $
            telefone "Barbara" base `shouldBe` "2222-3333"
        it "dado Daniela deve retornar 4444-5555" $
            telefone "Daniela" base `shouldBe` "4444-5555"
        it "dado Andre deve retornar 4444-5555" $
            telefone "Andre" base `shouldBe` "1111-2222"

    describe "funcao novo_telefone" $ do

        it "dado base acrescentar o novo telefone" $
            let novofone = ("Elaine","4444-5555")
            in  telefone_novo novofone base `shouldBe` base ++ [novofone]

        it "dado base alterar um telefone" $
            let novofone = ("Barbara","3333-2222")
            in  telefone_novo novofone base `shouldBe` 
                take 1 base ++ [novofone] ++ drop 2 base

        it "dado base alterar o ultimo telefone" $
            let novofone = ("Daniela","5555-4444")
            in  telefone_novo novofone base `shouldBe` 
                init base ++ [novofone]
