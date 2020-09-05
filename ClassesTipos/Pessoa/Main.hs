
createListPessoas [] = []
createListPessoas ((n,i,s):xs) = Pessoa n i s:createListPessoas xs
 

main = do
  line1 <- getLine
  let xs = (read :: String -> [(String, Int, Float)]) line1
  let ps = createListPessoas xs
  
  print $ ps
  print $ sortListPessoa ps ByNome    
  print $ sortListPessoa ps ByIdade   
  print $ sortListPessoa ps BySalario 
    

