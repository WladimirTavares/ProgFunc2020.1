
main = do	 
	line <- getLine	
	let n       = (read::String->Int) line 
	print $ fact n

