# coposQuebrados

Parte do treinamento de um novo garçom é carregar uma grande bandeja com várias latas de bebidas e copos e entregá-las todas numa mesa do restaurante. Durante o treinamento é comum que os garçons deixem cair as bandejas, quebrando todos os copos.

A Sociedade Brasileira de Copos (SBC) analisou estatísticas do treinamento de diversos garçons e descobriu que os garçons em treinamento deixam cair apenas bandejas que têm mais latas de bebidas que copos. Por exemplo, se uma bandeja tiver 10 latas e 4 copos, certamente o garçom em treinamento a deixará cair, quebrando os 4 copos. Já se a bandeja tiver 5 latas e 6 copos, ele conseguirá entregá-la sem deixar cair.

Escreva uma função coposQuebrados :: [(Int,Int)] -> Int tal que (coposQuebrados xs) devolve o total de copos quebrados por um garçom considerando uma lista de bandejas que o garçom tentou entregar. Cada bandeja é representada por uma tupla  (L,C) , onde  L  é o número de latas e   C  é o número de copos. Por exemplo, 

```hs
coposQuebrados [(10,5), (6,8),(3,3)] == 5
```


Observe que, apenas na primeira bandeja, o número de latas é maior que copos.


Dica: Defina uma função `quebra` que recebe uma bandeja e devolve o número de copos quebrados.

Dica: Use a função `filter` e `sum`.