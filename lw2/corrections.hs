do_my_list :: Int -> [Int]
do_my_list x 
    | x < 0 = []
    | otherwise = take x [x..]

insert :: [a] -> a -> Int -> [a]
insert xs x n 
    | n < 0 = [x] ++ xs
    | n > length xs = xs ++ [x]
    | otherwise = take n xs ++ (x : drop n xs)

main :: IO ()
main = do 
    print (do_my_list 5)
    print (do_my_list 4)
    print (do_my_list 10)
    print (do_my_list (-1))

    print (insert [1, 2, 3, 4, 5] 6 2)
    print (insert [1, 2, 3, 4, 5] 6 10)
    print (insert ['a', 'b', 'c'] 'd' 0)
    print (insert ["one", "two"] "three" 2)
    print (insert ['a', 'b', 'c'] 'd' (-1))