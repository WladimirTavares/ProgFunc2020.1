


main = do	 
 line1 <- getLine
 let xs = (read :: String -> [Int] ) line1
 print $ derivada ( makePol xs)

