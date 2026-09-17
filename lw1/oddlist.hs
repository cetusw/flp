oddList1 :: [Int]
oddList1 = [1,3..39]

oddList2 :: [Int]
oddList2 = take 20 [1,3..]

oddList3 :: [Int]
oddList3 = [2 * x + 1 | x <- [0..19]]

main :: IO ()
main = do
    putStr "1. "
    print oddList1

    putStr "2. "
    print oddList2

    putStr "3. "
    print oddList3