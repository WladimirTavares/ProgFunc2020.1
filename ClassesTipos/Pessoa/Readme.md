# Pessoa


Considere a seguinte definição:
```hs
data Pessoa = { nome :: String
            , idade :: Int
            , salario :: Float 
            }

data Criterio = ByNome | ByIdade | BySalario

-- classifica lista de pessoa por critério
sortListPessoa :: [Pessoa] -> Criterio -> [Pessoa]
sortListPessoa = undefined 

instance Show Pessoa where
    show p = undefined 

pessoas = [ Pessoa "Joao" 25 2000, Pessoa "Ana" 20 2500, Pessoa "Alyson" 22 2200]


```

A sua definição deve produzir os seguintes resultados:
```hs
*Main> pessoas
["Joao" tem 25 anos e ganha de salario 2000.0,"Ana" tem 20 anos e ganha de salario 2500.0,"Alyson" tem 22 anos e ganha de salario 2200.0]
*Main> sortListPessoa pessoas ByNome
["Alyson" tem 22 anos e ganha de salario 2200.0,"Ana" tem 20 anos e ganha de salario 2500.0,"Joao" tem 25 anos e ganha de salario 2000.0]
*Main> sortListPessoa pessoas ByIdade
["Ana" tem 20 anos e ganha de salario 2500.0,"Alyson" tem 22 anos e ganha de salario 2200.0,"Joao" tem 25 anos e ganha de salario 2000.0]
*Main> sortListPessoa pessoas BySalario
["Joao" tem 25 anos e ganha de salario 2000.0,"Alyson" tem 22 anos e ganha de salario 2200.0,"Ana" tem 20 anos e ganha de salario 2500.0]
```

Dica: Pesquise sobre a função `compare` e a funcao `sortBy` do módulo Data.List