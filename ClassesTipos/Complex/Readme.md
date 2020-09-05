# complex

Considere a seguinte definição do números complexos

```hs
data Complex = Complex { real :: Float
                        ,img :: Float
                        }
```
Complete a implementação da instância `Show` para o tipo `Complex`:

```hs
instance Show Complex where
    show = undefined
```

A sua definição deve produzir os seguintes resultados:

```hs
show (Complex 2 3) == "2.0 + 3.0i"
```

Complete a implementação da instância `Num` para o tipo `Complex`:

```hs
instance Num Complex where
    (+) c1 c2       = undefined
    (-) c1 c2       = undefined
    (*) c1 c2       = undefined
    negate c        = undefined
    abs c           = undefined
    signum c        = undefined
    fromInteger n   = undefined
```

A sua definição deve produzir os seguintes resultados:

```hs
*Main> (Complex 2 3) + (Complex 5 6)
7.0 + 9.0i
*Main> (Complex 2 3) - (Complex 5 6)
-3.0 + -3.0i
*Main> (Complex 2 3) * (Complex 5 6)
-8.0 + 27.0i
*Main> -(Complex 2 3) 
-2.0 + -3.0i
*Main> abs (Complex 2 3) 
3.6055512 + 0.0i
*Main> signum (Complex 2 3) 
0.5547002 + 0.8320503i
*Main> 2 :: Complex
2.0 + 0.0i
*Main> 9 :: Complex
9.0 + 0.0i
```

Dicas:

* <img src="https://latex.codecogs.com/svg.latex?(a+bi)+(c+di) = (a+c)+(b+d)i">

* <img src="https://latex.codecogs.com/svg.latex?(a+bi)-(c+di) = (a-c)+(b-d)i">

* <img src="https://latex.codecogs.com/svg.latex?(a+bi)*(c+di) = ac + adi + bci + bdi^2">

* <img src="https://latex.codecogs.com/svg.latex?abs(a + bi) = \sqrt{a^2 + b^2}">

* <img src="https://latex.codecogs.com/svg.latex?abs (x)*signum(x) = x">








