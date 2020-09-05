


main = do	 
	line <- getLine	
	let n       = (read::String->Int) line 
	print $ somaQuadrados n

