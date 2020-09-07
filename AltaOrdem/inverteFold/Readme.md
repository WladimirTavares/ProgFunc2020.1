# inverteFold 
Escreva a definição da função `inverteFold :: [a] -> [a]` tal que (`inverteFold xs`) devolve a lista xs invertida usando a função `foldr :: (a -> b -> b) -> b -> [a] -> b`

```hs
inverteFold [1,2,,3,4] == [4,3,2,1]
```


> Ps: Não utilize a função reverse do módulo Prelude.

> Dica: A definição da função inverteFold será
>
> inverteFold xs = foldr (\x z -> ) [] xs
>
> `x` representa um elemento da lista
> `z` representa a inversão da lista à > direita do elemento x


