module Polinomio (Polinomio, polZero, isPolZero, grau, coefLider, restoPol, consPol) where

data Polinomio a = Pol [(a,Int)] deriving (Show,Eq)

polZero :: Polinomio a
polZero = Pol []

isPolZero :: Polinomio a -> Bool
isPolZero (Pol []) = True
isPolZero (Pol xs) = False

grau :: Polinomio a -> Int
grau (Pol []) = -1
grau (Pol xs) = (snd.head) xs

coefLider :: Num a => Polinomio a -> a
coefLider (Pol [])    = 0
coefLider (Pol xs)    = (fst.head) xs

restoPol :: Polinomio a -> Polinomio a
restoPol (Pol []) = Pol []
restoPol (Pol xs) = Pol (tail xs)

normaliza :: (Num a, Eq a) => Polinomio a -> Polinomio a
normaliza p 
	| b == 0    = normaliza q
  | otherwise = p
	where 
	m = grau p
	b = coefLider p
	q = restoPol p


--Adiciona o termo ax^n ao polinômio p
consPol :: (Num a,Eq a) => a -> Int -> Polinomio a -> Polinomio a
consPol a n (Pol []) = Pol [(a,n)]
consPol a n p@(Pol xs)
	| n > m    = Pol ((a,n):xs)
  | n < m    = consPol b m ( consPol a n q)
  | n == m   = normaliza ( consPol (a+b) n q) 
	where 
	m = grau p
	b = coefLider p
	q = restoPol p


