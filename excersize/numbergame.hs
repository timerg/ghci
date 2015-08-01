import System.Random
read' :: String -> Int
read' xs = read xs :: Int


main = do
g <- getStdGen
let a = head (randomRs (1, 100) g :: [Int])    -- express後面可以直接標型別
input <- getLine   -- <- 可以暫時把ＩＯ拿掉，所以input是String
let p = read' input
if p > a
    then do
        print "too big"
        main
    else
        if p < a
            then do
                print "too small"
                main
            else
                print "yeh"
            -- return ()  print的動作自動也送出了（）
