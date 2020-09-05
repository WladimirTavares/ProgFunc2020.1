### duplicates
Escreva uma função (`duplicates :: [Int] -> [Int]`) tal que (`duplicates xs`) devolve uma lista dos elementos duplicados na lista `xs`.

```hs
duplicates [2,10,100,2,10,11] == [2,10]
duplicates [5,40,1,40,100000,1,5,1] == [1,5,40]
duplicates [1,2,3,4,5] == []
```

Use Data.Map


