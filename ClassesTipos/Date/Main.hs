
main = do
  line1 <- getLine

  let [d1,m1,a1] = map (read :: String -> Int) (words line1)  
  let data1 = MkDate d1 (toEnum m1) a1
  line2 <- getLine
  let [d2,m2,a2] = map (read :: String -> Int) (words line2)    
  let data2 = MkDate d2 (toEnum m2) a2
  print $ data1
  print $ data2
  print $ data1 < data2
  





