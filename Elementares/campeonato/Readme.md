# compeonato

Dois times, Cormengo e Flaminthians, participam de um campeonato de futebol, juntamente com outros times. Cada vitória conta três pontos, cada empate um ponto. Fica melhor classificado no campeonato um time que tenha mais pontos. Em caso de empate no número de pontos, fica melhor classificado o time que tiver maior saldo de gols. Se o número de pontos e o saldo de gols forem os mesmos para os dois times então os dois times estão empatados no campeonato.



Escreva uma função campeonato que recebe seis inteiros `cv` , `ce` , `cs` , `fv` , `fe` e `fs` , que são, respectivamente, o número de vitórias do Cormengo, o número de empates do Cormengo, o saldo de gols do Cormengo, o número de vitórias do Flaminthians, o número de empates do Flaminthians e o saldo de gols do Flaminthians. Se Cormengo é melhor classificado que Flaminthians, a funcao classifica devolve a letra 'C', se Flaminthians é melhor classificado que Cormengo, a funcao classificacao devolve a letra 'F', e se os dois times estão empatados a funcao classificacao devolve apenas o caractere '='.


```hs
campeonato 10 5 18 11 1 18 == 'C'

campeonato 10 5 18 11 2 18 == '='

campeonato 9 5 -1 10 2 10 == 'F'
```

