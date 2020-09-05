

main = do
  line1 <- getLine
  let xss = (read :: String -> [Row]) line1  
  line2 <- getLine
  let yss = (read :: String -> [Row]) line2     
  let m1 = listToMatrix xss  
  let m2 = listToMatrix yss
  print $ sumMatrix  m1 $ zeroMatrix (ncols m1) (nrows m1) 
  print $ prodMatrix m2 $ identMatrix (nrows m2) 
  print $ sumMatrix m1 m2
  print $ prodMatrix m1 m2
  print $ prodScalar 2.0 m1  
  print $ prodScalar 2.0 m2  
  print $ oneMatrix 5 6






