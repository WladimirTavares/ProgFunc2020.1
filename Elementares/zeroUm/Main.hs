
main = do	 
 line1 <-  getLine
 line2 <-  getLine
 line3 <-  getLine
 let a = (read :: String -> Int ) line1
 let b = (read :: String -> Int ) line2
 let c = (read :: String -> Int ) line3
 print $ zeroUm a b c 	

