# toRNA

As cadeias de DNA e RNA são uma sequência de nucleotı́deos. Os quatro nucleotı́deos encontrados no DNA são adenina (A), citosina (C), guanina (G) e timina (T). Os quatro nucleotı́deos encontrados no RNA

são adenina (A), citosina (C), guanina (G) e uracila (U). Dada uma sequência de DNA, sua sequência de RNA transcrita é formada substituindo cada nucleotı́deo por seu complemento:

```
G -> C

C -> G

T -> A

A -> U
```

Defina uma função `toRNA :: String -> String` tal que (`toRNA xs`) devolve a cadeia de RNA formada a partir da cadeia-molde de DNA, `xs`. Por exemplo,


```hs
toRNA "ACGTGGTCTTAA"== "UGCACCAGAAUU"
```