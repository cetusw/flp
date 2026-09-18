insert :: [a] -> a -> Int -> [a]
insert xs x n = take n xs ++ (x : drop n xs)

main :: IO ()
main = do
    print (insert [1, 2, 3, 4, 5] 6 2)
    print (insert ['a', 'b', 'c'] 'd' 0)
    print (insert ["one", "two"] "three" 2)
    

