

main = do	 
	line1 <- getLine
	line2 <- getLine	
	print $ interseccao (read line1 :: [Int]) (read line2 :: [Int])

