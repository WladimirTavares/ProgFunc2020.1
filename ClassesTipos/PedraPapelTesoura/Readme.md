Considere a seguinte definição:

```hs
data Gesto = Pedra | Papel | Tesoura
```


Defina função `ganhadores :: [(Gesto,Gesto)] -> [Int]`  que recebe uma lista de jogadas e retorna uma lista dos índices das jogadas vencedoras.
```hs
*Main> ganhadores [(Pedra, Papel),(Pedra,Tesoura),(Pedra,Pedra)]
[1]
*Main> ganhadores [(Pedra, Papel),(Pedra,Tesoura),(Pedra,Pedra),(Tesoura, Papel)]
[1,3]
*Main> ganhadores [(Pedra, Papel),(Pedra,Tesoura),(Pedra,Pedra),(Tesoura, Papel),(Papel, Pedra)]
[1,3,4]
``` 

Dica: Defina a função `ganhaDe :: Gesto -> Gesto -> Bool` tal que `ganhaDe g1 g2` verifica se `g1` ganha de `g2`.








