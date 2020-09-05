import Data.Char
import System.Random (randomRIO)
import qualified Data.Map as Map


numeroInsercao xs = n - 1
  where
  processa hash xs = foldr (\x acc -> Map.insertWith (+) x 1 acc) hash xs
  zs = Map.toList ( processa (Map.empty) xs )
  n  = foldr ( \(a,b) acc -> if odd b then acc + 1 else acc ) 0 zs 
        
numberToChar n = chr (ord 'a' + n - 1)


randomString :: Int -> IO([Char])
randomString 0 = return []
randomString n = do
  r  <- randomRIO (1,26)
  rs <- randomString (n-1)
  return ( numberToChar r :rs) 


main = do	  
  line1 <- getLine
  lin2  <- getLine 	
  print $ transformaAnagrama line1 line2
  


