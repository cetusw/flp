listSumm :: [Int] -> [Int] -> [Int]
listSumm xs [] = xs
listSumm [] ys = ys
listSumm (x:xs) (y:ys) = (x + y) : listSumm xs ys

main :: IO ()
main = do
    print (listSumm [1, 2, 3] [4, 5, 6])
    print (listSumm [1, 2, 3] [4, 5, 6, 7])
    print (listSumm [1, 2, 3, 8, 9] [4, 5, 6, 7])
    print (listSumm [1, 2, 3, 8, 9, 10] [4, 5, 6, 7])
    print (listSumm [] [])