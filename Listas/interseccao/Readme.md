# interseccao

Defina a função `interseccao :: Eq a => [a] -> [a] -> [a]` tal que (`interseccao xs ys`) devolve a intersecçao dos conjuntos xs e ys seguindo a ordem em que eles aparecem na lista xs. 

Por exemplo,

```hs
interseccao [ 3 , 2 , 5 ] [ 5 , 7 , 3 , 4 ] == [ 3 , 5 ]
interseccao [ 3 , 2 , 6] [ 5 , 7 , 3 , 4 ] == [ 3  ]
interseccao [ 8 , 2 , 6] [ 5 , 7 , 3 , 4 ] == [  ]
interseccao [ 3 , 1 , 4, 6] [ 6, 3, 1, 9 ] == [ 3, 1, 6 ]
```