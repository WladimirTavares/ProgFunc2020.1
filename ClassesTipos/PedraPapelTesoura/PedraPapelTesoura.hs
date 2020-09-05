


numero 0 = Pedra
numero 1 = Papel
numero 2 = Tesoura
 
main = do
  line1 <- getLine 
  let xs = (read :: String -> [(Int,Int)]) line1  
  let ys = map (\(a,b) -> (numero a, numero b) ) xs
  print $ ganhadores ys 
  








