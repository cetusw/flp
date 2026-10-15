module Lab4 where

import Data.Char (ord)
import qualified Data.Map as Map
import qualified Data.Set as Set

-- Data.List.intersperse :: a -> [a] -> [a]
-- Вставляет указанный элемент между соседними элементами списка.
myIntersperse :: a -> [a] -> [a]
myIntersperse _ [] = []
myIntersperse _ [x] = [x]
myIntersperse sep (x:xs) = x : sep : myIntersperse sep xs


-- Data.Char.digitToInt :: Char -> Int
-- Преобразует символ цифры в число. Причём работает не только с '0'..'9', но и с шестнадцатеричными 'a'..'f' и 'A'..'F'.
myDigitToInt :: Char -> Int
myDigitToInt c
    | c >= '0' && c <= '9' = ord c - ord '0'
    | c >= 'a' && c <= 'f' = ord c - ord 'a' + 10
    | c >= 'A' && c <= 'F' = ord c - ord 'A' + 10
    | otherwise = error "Not a digit"


-- Data.Map.member :: Ord k => k -> Map k a -> Bool
-- Проверяет, существует ли ключ в Map.
myMember :: Eq k => k -> Map.Map k a -> Bool
myMember key m = any (\(k, _) -> k == key) (Map.toList m)

-- Алтернативный вариант реализации Data.Map.member
myMember2 :: Ord k => k -> Map.Map k a -> Bool
myMember2 key m =
    case Map.lookup key m of
        Just _  -> True
        Nothing -> False


-- Data.Set.isSubsetOf :: Ord a => Set a -> Set a -> Bool
-- Проверяет, является ли одно множество подмножеством другого.
myIsSubsetOf :: Ord a => Set.Set a -> Set.Set a -> Bool
myIsSubsetOf a b =
    all (`Set.member` b) (Set.toList a)


-- Data.Function.on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
-- Позволяет сначала преобразовать два значения функцией g, а затем сравнить или обработать результаты функцией f.
myOn :: (b -> b -> c) -> (a -> b) -> a -> a -> c
myOn f g x y = f (g x) (g y)

main :: IO ()
main = do
    putStrLn "=== myIntersperse ==="
    print (myIntersperse 0 [1, 2, 3, 4])
    print (myIntersperse 0 [])
    print (myIntersperse '-' "Haskell")
    putStrLn ""
    
    putStrLn "=== myDigitToInt ==="
    print (myDigitToInt '7')
    print (myDigitToInt 'A')
    print (myDigitToInt 'f')
    putStrLn ""

    putStrLn "=== myMember ==="
    let map1 = Map.fromList [(1, "one"), (2, "two"), (3, "three")]
    print (myMember 2 map1)
    print (myMember 5 map1)
    print (myMember 1 Map.empty)
    putStrLn ""

    putStrLn "=== myMember2 ==="
    print (myMember2 2 map1)
    print (myMember2 5 map1)
    print (myMember2 1 Map.empty)
    putStrLn ""

    putStrLn "=== myIsSubsetOf ==="
    print (myIsSubsetOf (Set.fromList [2, 3]) (Set.fromList [1, 2, 3, 4]))
    print (myIsSubsetOf (Set.fromList [1, 2, 3]) (Set.fromList [1, 2, 3]))
    print (myIsSubsetOf (Set.fromList [2, 5]) (Set.fromList [1, 2, 3, 4]))
    putStrLn ""

    putStrLn "=== myOn ==="
    print (myOn compare length "Haskell" "Go")
    print (myOn (==) length "cat" "dog")
    print (myOn (+) abs (-5) 3)
    putStrLn ""