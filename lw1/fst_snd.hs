getCharFromTuple :: ((Int, Char), String) -> Char
getCharFromTuple x = snd (fst x)

main :: IO ()
main = print (getCharFromTuple (( 1, 'a'), "abc")) 