positionWithCounter :: Eq a => [a] -> a -> Int -> Int
positionWithCounter [] _ _ = -1
positionWithCounter (x:xs) y pos
    | x == y = pos
    | otherwise = positionWithCounter xs y (pos + 1)

position :: Eq a => [a] -> a -> Int
position xs y = positionWithCounter xs y 0

main :: IO ()
main = do
    print (position [1, 2, 3, 4] 3)
    print (position ['a', 'b', 'c'] 'a')
    print (position ["a", "b", "c", "d"] "d")
    print (position ["a", "b", "c", "d"] "e")