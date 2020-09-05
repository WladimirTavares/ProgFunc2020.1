

main = do	 
	inputdata <- getContents
	let entrada = lines inputdata
	let n       = read( entrada !! 0 )
	let m       = read( entrada !! 1 )
	print $ segmento n m $ map (read :: String->Int) (tail (tail entrada) )
