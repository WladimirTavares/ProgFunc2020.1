
main = do
  line1 <- getLine
  let [a,b,c,d] = map (read :: String -> Float) (words line1)
  let c1 = Complex a b
  let c2 = Complex c d
  
  putStrLn $ show $ c1
  putStrLn $ show $ c2
  putStrLn $ show $ c1 + c2
  putStrLn $ show $ c1 - c2
  putStrLn $ show $ c1 * c2
  putStrLn $ show $ -c1
  putStrLn $ show $ -c2
  putStrLn $ show $ abs c1
  putStrLn $ show $ abs c2
  putStrLn $ show $ signum c1
  putStrLn $ show $ signum c2


 

