# Date

Considere a seguinte definição:

```hs
data Mes = Janeiro 
            | Fevereiro 
            | Marco 
            | Abril 
            | Maio 
            | Junho 
            | Julho 
            | Agosto 
            | Setembro 
            | Outubro
            | Novembro
            | Dezembro
            deriving (Show, Ord, Eq, Enum) 

data Date = MkDate { dia :: Int 
            , mes :: Mes    
            , ano :: Int   
            }

```

Complete a implementação do tipo Date para a classe Show.

```hs
instance Show Date where
    show = undefined
```
Complete a implementação do tipo Date para a classe Eq.

```hs
instance Eq Date where
    (==) d1 d2 = undefined
```

Complete a implementação do tipo Date para a classe Ord.

```hs
instance Ord Date where
    (<=) d1 d2 = undefined
```

A sua definição deve produzir o seguinte resultado:

```hs
*Main> MkDate 15 Janeiro 1983 
15 de Janeiro de 1983
*Main> MkDate 15 Janeiro 1984 
15 de Janeiro de 1984
*Main> MkDate 15 Janeiro 1984 <= MkDate 09 Janeiro 1984 
False
*Main> MkDate 15 Janeiro 1983 <= MkDate 09 Janeiro 1984 
True
*Main> MkDate 32 Janeiro 1983 <= MkDate 09 Janeiro 1984 
True
```






