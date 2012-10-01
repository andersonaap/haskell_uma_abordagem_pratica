{-
Dada uma lista, criar funcoes que

4. remova um elemento na posicao n
6. insira um elemento na posicao n
7. obtenha o elemento na posicao n
-}
import Test.HUnit

remover (x:[]) 0       = []
remover (x:[]) _       = x:[]
remover (x:xs) 0       = xs
remover (x:xs) pos     = x:remover xs (pos - 1)

inserir xs val 0       = val:xs
inserir [] val _       = val:[]
inserir (x:xs) val pos = x:inserir xs val (pos - 1)

obter (x:[]) 0         = x
obter (x:[]) _         = -1
obter (x:xs) 0         = x
obter (x:xs) pos       = obter xs (pos - 1)


main = do
	runTestTT $ []                 ~=? remover [1] 0
	runTestTT $ [1]                ~=? remover [1] 1
	runTestTT $ [2]                ~=? remover [1, 2] 0
	runTestTT $ [1]                ~=? remover [1, 2] 1
	runTestTT $ [2, 3, 4, 5, 6]    ~=? remover [1, 2, 3, 4, 5, 6] 0
	runTestTT $ [1, 2, 3, 4, 6]    ~=? remover [1, 2, 3, 4, 5, 6] 4
	runTestTT $ [1, 2, 3, 4, 5]    ~=? remover [1, 2, 3, 4, 5, 6] 5
	runTestTT $ [1, 2, 3, 4, 5, 6] ~=? remover [1, 2, 3, 4, 5, 6] 6

	runTestTT $ [1]                ~=? inserir [] 1 0
	runTestTT $ [1, 3, 2]          ~=? inserir [1, 2] 3 1
	runTestTT $ [1, 2, 3]          ~=? inserir [1, 2] 3 2
	runTestTT $ [7, 1, 2, 3, 4, 5] ~=? inserir [1, 2, 3, 4, 5] 7 0
	runTestTT $ [1, 2, 3, 7, 4, 5] ~=? inserir [1, 2, 3, 4, 5] 7 3
	runTestTT $ [1, 2, 3, 4, 5, 7] ~=? inserir [1, 2, 3, 4, 5] 7 5
	runTestTT $ [1, 2, 3, 4, 5, 7] ~=? inserir [1, 2, 3, 4, 5] 7 6

	runTestTT $ 1                  ~=? obter [1] 0
	runTestTT $ -1                 ~=? obter [1] 1
	runTestTT $ 2                  ~=? obter [2, 1] 0
	runTestTT $ 1                  ~=? obter [2, 1] 1
	runTestTT $ -1                 ~=? obter [2, 1] 2
	runTestTT $ 1                  ~=? obter [1, 2, 3, 4, 5, 6] 0
	runTestTT $ 5                  ~=? obter [1, 2, 3, 4, 5, 6] 4
	runTestTT $ 6                  ~=? obter [1, 2, 3, 4, 5, 6] 5
	runTestTT $ -1                 ~=? obter [1, 2, 3, 4, 5, 6] 6
