### Palavras palindrômicas
Paulinho gosta muito de palavras palindrômicas. Ele tem uma palavra S que consiste em letras minúsculas. Paulinho deseja converter sua palavra `S` em uma palavra palindrômica. Para que o propósito acima seja atendido, ele pode inserir quantos caracteres (possivelmente zero) quiser em sua string `S`, de modo que os caracteres na nova palavra `S'` possam ser embaralhados para torná-la um palíndromo. Paulinho deseja realizar esta tarefa com o menor número possível de inserções em sua palavra original `S`.

Defina uma função `numeroInsercao :: [Char] -> Int` tal que (`numeroInsercao S`) devolve o número mínimo de insercoes na palavra original `S` de modo a nova palavra `S'` possa tornar-se uma palavra palindroma.

```hs
numeroInsercao "radar" == 0
numeroInsercao "abc" == 2
numeroInsercao "ab" == 1
numeroInsercao "caa" == 0
numeroInsercao "ccdbb" == 0
```

