oddEven :: [a] -> [a]
oddEven [] = []
oddEven [x] = [x]
oddEven (x:y:xs) = y : x : oddEven xs

main :: IO ()
main = do
    print (oddEven [1, 2, 3, 4, 5, 6])
    print (oddEven [1, 2, 3, 4, 5])
    print (oddEven ['a', 'b', 'c', 'd', 'e', 'f'])
    print (oddEven ["a", "b", "c", "d", "e", "f"])