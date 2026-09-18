sumOfNumbers :: Int -> Int
sumOfNumbers n 
    | n <= 0 = 0
    | otherwise = (n - 1) + sumOfNumbers (n - 1)

main :: IO () 
main = do
    print (sumOfNumbers 1)
    print (sumOfNumbers 2)
    print (sumOfNumbers 5)
    print (sumOfNumbers 0)
    print (sumOfNumbers (-1))