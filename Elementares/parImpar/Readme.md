# parImpar

Muitas crianças gostam de decidir todas as disputas através do famoso jogo de Par ou Ímpar. Nesse jogo, um dos participantes escolhe Par e o outro Ímpar. Após a escolha, os dois jogadores mostram, simultaneamente, uma certa quantidade de dedos de uma das mãos. Se a soma dos dedos das mãos dos dois jogadores for par, vence o jogador que escolheu Par inicialmente, caso contrário vence o que escolheu Ímpar.

Escreva uma função (`parImpar :: [(Int,Int)] -> Int`) tal que (`parImpar xs`) devolve o número de vitórias do primeiro jogador. Cada partida de Par ou Ímpar é descrita por dois inteiros A e B que representam o número de dedos do primeiro jogador e o número de dedos do segundo jogador, respectivamente. Considere que o primeiro jogador sempre escolhe Par.

```hs
parImpar [(2,4),(3,5),(1,0)]  == 2

parImpar [(1,5),(2,1),(1,4),(2,2)] == 2

parImpar [(1,5),(2,3)] == 1
```

Dica: Construa uma função `vitoria` que devolve 1 quando o primeiro jogador vence.

Dica: Use a função `filter` e `sum`.