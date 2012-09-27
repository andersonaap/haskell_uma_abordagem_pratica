{-
Caracter da entrada, (minuscula, maiuscula, e ASC)
-}
import Test.HUnit
import Data.Char


infochar c = (toLower c, toUpper c, ord c)


main = do
	runTestTT $ ('a', 'A', 65)  ~=? infochar 'A'
	runTestTT $ ('a', 'A', 97)  ~=? infochar 'a'
	runTestTT $ ('z', 'Z', 90)  ~=? infochar 'Z'
	runTestTT $ ('z', 'Z', 122) ~=? infochar 'z'
