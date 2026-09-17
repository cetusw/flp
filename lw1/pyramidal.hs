getPyramidal :: [Int]
getPyramidal = [n * (n + 1) * (n + 2) `div` 6 | n <- [1..50]]

main :: IO ()
main = print getPyramidal