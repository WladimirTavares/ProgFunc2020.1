# zeroUm

Todos devem conhecer o jogo Zerinho ou Um (em algumas regiões também conhecido como Dois ou Um), utilizado para determinar um  ganhador entre três ou mais jogadores. Para quem não conhece, o jogo funciona da seguinte maneira. Cada jogador escolhe um valor entre  zero ou um; a um comando (geralmente um dos competidores anuncia em voz alta ?Zerinho ou... Um!?), todos os participantes mostram o valor escolhido, utilizando uma das mãos: se o valor escolhido foi um, o competidor mostra o dedo indicador estendido; se o valor escolhido foi zero,  mostra a mão com todos os dedos fechados. O ganhador é aquele que tiver escolhido um valor diferente de todos os outros; se não há um jogador  com valor diferente de todos os outros (por exemplo todos os jogadores escolhem zero, ou um grupo de jogadores escolhe zero e outro grupo  escolhe um), não há ganhador.

Escreva uma função `zeroUm` que recebe três inteiros  `a` ,  `b`  e  `c` , que são, respectivamente, o valor escolhido por Alice, o valor escolhido por Beto e  o valor escolhido por Clara, cada valor é zero ou um. Se o vencedor é Alice, a função zeroUm devolve 'A', se o vencedor é Beto, a função zeroUm devolve'B', se o vencedor é Clara, a função zeroUm devolve 'C' e se não há  vencedor, a função de '*' (asterisco).

```hs
zeroUm 1 0 0 = 'A'
zeroUm 0 1 0 = 'B'
zeroUm 0 0 1 = 'C'
zeroUm 0 0 0 = '*'
```
