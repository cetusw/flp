main :: IO ()
main = do 
    putStr "1. "
    print (head (tail ['a', 'b', 'c']))
    
    putStr "2. "
    print (head (tail (head [['a', 'b'], ['c','d']])))
    
    putStr "3. "
    print (head (tail (head (tail [['a', 'c', 'd'], ['a','b']]))))
    
    putStr "4. "
    print (head (head (tail [['a','d'], ['b', 'c']])))
 