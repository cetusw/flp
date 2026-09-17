getTriangular :: [Int]
getTriangular = [n * (n + 1) `div` 2 | n <- [1..50]]

main :: IO ()
main = print getTriangular