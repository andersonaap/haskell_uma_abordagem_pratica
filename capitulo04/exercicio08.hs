import Test.HUnit
import Data.List
{-
Base apresentada
-}
base :: Int -> (Int, String, String, Char)
base x
	| x == 0 =  (1793, "Pedro Paulo",             "MESTRE", 'M')
	| x == 1 =  (1797, "Joana Silva Alencar",     "MESTRE", 'F')
	| x == 2 =  (1534, "Joao de Medeiros",        "DOUTOR", 'M')
	| x == 3 =  (1267, "Claudio Cesar de Sa",     "DOUTOR", 'M')
	| x == 4 =  (1737, "Paula de Medeiros",       "MESTRE", 'F')
	| x == 5 =  (1888, "Rita de Mastos",          "MESTRE", 'F')
	| x == 9 =  (1698, "Teresa Cristina Andrade", "MESTRE", 'F')
	| x == 10 = (0,    "",                        "",       '0')
{-
Faca uma funcao que
a. numero de doutores
b. numero de mulheres
c. numero de mestres masc
d. nome do professor mais antigo, menor matricula
-}

infbase = 
	let 
	bs            = map base [0, 1, 2, 3, 4, 5, 9, 10]
	doutores      = length . filter (\(_, _, x, _) -> x == "DOUTOR") $ bs
	mulheres      = length . filter (\(_, _, _, x) -> x == 'F') $ bs
	mestresmasc   = length . filter (\(_, _, x, y) -> x == "MESTRE" && y == 'M') $ bs
	nomemaisvelho = head . map (\(_, x, _, _) -> x) . drop 1 . sort $ bs
	in
	(doutores, mulheres, mestresmasc, nomemaisvelho)

main = do
	runTestTT $ (2, 4, 1, "Claudio Cesar de Sa") ~=? infbase

