# paridadeFold

Escreva uma função `paridadeFold :: [Bool] -> Bool` que calcule a paridade de uma lista de boleanos): se o número de valores True for par então a paridade é True, caso contrário é False. Por exemplo, 

```hs
paridadeFold [True,True, False,True] = False
paridadeFold [True,True, False,True, True] = True
```


```hs
paridade xs = foldr (\x acc-> ) True xs
```