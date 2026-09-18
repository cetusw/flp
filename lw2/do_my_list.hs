do_my_list :: Int -> [Int]
do_my_list x = take x [x..]

main :: IO ()
main = do 
    print (do_my_list 5)
    print (do_my_list 4)
    print (do_my_list 10)