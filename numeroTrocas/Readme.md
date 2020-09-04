### Número de Trocas
Alice e Beatriz colecionam cartas do Pokémon. As meninas querem saber qual é o número máximo de cartas que podem ser trocadas. Por exemplo, se Alice tem o conjunto de cartas {1, 1, 2, 3, 5, 7, 8, 8, 9, 15} e Beatriz o conjunto {2, 2, 2, 3, 4, 6, 10, 11, 11}, elas podem trocar entre si no máximo quatro cartas.

Escreva uma função `numeroTrocas :: [Int] -> [Int] -> Int` tal que (`numeroTrocas xs ys`)  recebe as duas listas `xs` e `ys`  de cartas que Alice e Beatriz possuem, determine o número máximo de cartas que podem ser trocadas.

  
```hs
numeroTrocas [1, 1, 2, 3, 5, 7, 8, 8, 9, 15] [2, 2, 2, 3, 4, 6, 10, 11, 11] == 4
numeroTrocas [1, 1, 2, 3, 5, 7, 8, 8, 9] [2, 2, 2, 3, 4, 6, 10, 11, 11] == 4
numeroTrocas [1, 1, 2, 3, 5, 7, 8, 8] [2, 2, 2, 3, 4, 6, 10, 11, 11] == 4
numeroTrocas [1, 1, 2, 3, 5, 7] [2, 2, 2, 3, 4, 6, 10, 11, 11] == 3
numeroTrocas [1, 1, 2, 3, 5, 7] [2, 2, 2, 3, 4, 6, 10] == 3
numeroTrocas [1, 1, 2, 3, 5, 7] [2, 2, 2, 3, 4, 6] == 2
```
