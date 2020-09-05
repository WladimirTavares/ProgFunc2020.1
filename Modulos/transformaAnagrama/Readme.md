### transforma Anagrama
Paulo e Douglas adoram strings. Paulo tem uma string S e Douglas tem uma string T. Eles querem transformar ambas as strings S e T em anagramas um do outro. Douglas pode aplicar duas operações para converter a string T em anagrama da string S, que são fornecidas a seguir:

1.) Excluir um caractere da string T.
2.) Adicionar um caractere da string S.

Douglas pode aplicar as duas operações acima quantas vezes quiser. Escreva uma função (`transformaAnagrama :: [Char] -> [Char] -> Int`) tal que (`transformaAnagrama xs ys`) devolve o número mínimo de operações necessárias para converter a string `ys` de forma que `xs` e `ys` se tornem anagramas um do outro.
```hs
transformaAnagrama "abc" "cba" == 0
transformaAnagrama "abd" "acb" == 2
transformaAnagrama "talentpad" "talepdapd" == 4
transformaAnagrama "code" "road" == 4
```


