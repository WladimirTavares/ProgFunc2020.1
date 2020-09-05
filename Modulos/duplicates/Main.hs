import Data.Char
import System.Random (randomRIO)
import qualified Data.Map as Map

--

duplicates xs = [ a | (a,b) <- Map.toList h1, b > 1]
  where
  processa hash xs = foldr (\x acc -> Map.insertWith (+) x   1 acc) hash xs
  h1 = processa Map.empty xs
  

transformaAnagrama xs ys = sum [ abs(b) | (a,b) <- Map.toList h2]
  where  
  processa1 hash xs = foldr (\x acc -> Map.insertWith (+) x   1 acc) hash xs
  processa2 hash ys = foldr (\x acc -> Map.insertWith (+) x (-1) acc) hash ys
  h1 = processa1 Map.empty xs
  h2 = processa2 h1 ys
      

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

randomList :: Int -> IO([Int])
randomList 0 = return []
randomList n = do
  r  <- randomRIO (1,20)
  rs <- randomList (n-1)
  return ( r :rs) 


main = do	  
  line1 <- getLine	
  let xs = (read :: String ->[Int]) line1	
  print $ duplicates xs    
  


