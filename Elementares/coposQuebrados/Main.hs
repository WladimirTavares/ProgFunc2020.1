

main = do	 
 line1 <-  getLine
 let xs = (read :: String -> [(Int,Int)] ) line1
 print $ coposQuebrados xs 	

