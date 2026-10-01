module Lab3 where

-- №1 listnums
listnums :: Int -> [Int]
listnums n 
    | n <= 0 = []
    | otherwise = n : listnums (n - 1)

-- №2 secondlastlist
secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist (x:xs)
    | null x = secondlastlist xs
    | otherwise = last x : secondlastlist xs

-- №3 myunion
myunion :: Eq a => [a] -> [a] -> [a]
myunion [] ys = ys
myunion (x:xs) ys
    | x `elem` ys = myunion xs ys
    | otherwise = x : myunion xs ys

-- №4 mysubst
mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] _ = []
mysubst (x:xs) ys
    | x `elem` ys = mysubst xs ys
    | otherwise = x : mysubst xs ys

-- №5 nthElements
nthElements :: [[a]] -> Int -> [a]
nthElements xs n
    | n < 0 = []
    | any (\x -> n >= length x) xs = []
    | otherwise = map (!! n) xs

main :: IO ()
main = do
    putStrLn "№1 listnums" 
    print (listnums 5)
    print (listnums 1)
    print (listnums 0)
    print (listnums (-1))
    putStrLn ""

    putStrLn "№2 secondlastlist"
    print (secondlastlist [[1,2,3],[4,5,6]])
    print (secondlastlist [[7,8,9]])
    print (secondlastlist [[10]])
    print (secondlastlist [[11,12,13],[14,15,16,17]])
    print (secondlastlist [[18,19,20,21],[]])
    print (secondlastlist [[],[22,23,24,25,26]])
    print (secondlastlist [[]] :: [Int])
    print (secondlastlist [] :: [Int])
    putStrLn ""

    putStrLn "№3 myunion"
    print (myunion [1,2,3] [2,4,5])
    print (myunion [3,2,1] [5,4,3])
    print (myunion [1,2,3] [4,5,6])
    print (myunion [6,7] [])
    print (myunion [] [11,12])
    print (myunion [8] [9])
    print (myunion [10] [10])
    print (myunion [] [] :: [Int])
    print (myunion [1,1,2] [2,3,3])
    putStrLn ""

    putStrLn "№4 mysubst"
    print (mysubst [1,2,3] [4,5,6])
    print (mysubst [1,2,3] [1,4,5])
    print (mysubst [7,8] [7,8,9])
    print (mysubst [10] [])
    print (mysubst [] [11])
    print (mysubst [] [] :: [Int])
    putStrLn ""

    putStrLn "№5 nthElements"
    print (nthElements [[1,2,3],[4,5,6]] 1)
    print (nthElements [[1,2,3],[4,5,6]] 2)
    print (nthElements [[7,8],[9,10]] 0)
    print (nthElements [[11,12],[13]] (-1))
    print (nthElements ([[],[]] :: [[Int]]) 5)
    print (nthElements [[1,2],[3]] 1)
    putStrLn ""


