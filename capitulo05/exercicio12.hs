{-
Com duas listas ordenadas, fazer um merge
delas respeitando a ordenacao
-}
import Test.HUnit

merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
	| x < y     = x:merge xs (y:ys)
	| otherwise = y:merge (x:xs) ys


main = do
	runTestTT $ []        ~=? merge [] []
	runTestTT $ [2]       ~=? merge [2] []
	runTestTT $ [1]       ~=? merge [] [1]
	runTestTT $ [1, 2]    ~=? merge [1] [2]
	runTestTT $ [1, 2]    ~=? merge [2] [1]
	runTestTT $ [1, 2, 3] ~=? merge [1, 3] [2]
	runTestTT $ [1, 2, 3] ~=? merge [2] [1, 3]
	runTestTT $ [0..9]    ~=? merge [2, 3, 4, 7, 9] [0, 1, 5, 6, 8]
