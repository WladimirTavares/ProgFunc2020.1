# Polinomio

Considere a seguinte definição do módulo Polinomio que define polinômio na forma densa:

```hs
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

-- remove os coeficientes nulos nos coeficientes iniciais
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


```

Utilizando o módulo Polinômio, defina a função (`makePol :: (Eq a, Num a) => [a] -> Polinomio a`)  tal que `makePol xs` recebe uma lista dos coeficientes de um polinômio e devolve um polinômio representado como uma lista de pares `(a,Int)` utilizando as funções disponíveis no módulo Polinômio.

A sua definição deve produzir os seguintes resultados:

```hs
*Main> makePol []
Pol []
*Main> makePol [2,0,1]
Pol [(2,2),(1,0)]
*Main> makePol [2,0,3,0,1]
Pol [(2,4),(3,2),(1,0)]
```

A derivada de um polinômio  

<img src="https://latex.codecogs.com/svg.latex?a_nx^n+ a_{n-1}x^{n-1}+\ldots+a_1x+a_0">

é o seguinte polinômio

<img src="https://latex.codecogs.com/svg.latex?(na_n)x^{n-1}+ (n-1)a_{n-1}x^{n-2}+\ldots+a_1  
">

 
Utilizando o módulo Polinômio, defina a função derivada :: Polinômio a -> Polinômio a tal que derivada p devolve a derivada do polinômio p.

A sua definição deve produzir os seguintes resultados:

```hs
*Main> derivada (makePol [5,6,0,0,4,2])
Pol [(25,4),(24,3),(4,0)]
*Main> derivada (makePol [8,5,6,3,0,4,2])
Pol [(48,5),(25,4),(24,3),(9,2),(4,0)]
*Main> derivada (makePol [6,8,5,6,3,0,4,2])
Pol [(42,6),(48,5),(25,4),(24,3),(9,2),(4,0)]
```


