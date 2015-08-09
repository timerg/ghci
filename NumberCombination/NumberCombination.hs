import System.IO
import Data.List

readFile' :: String -> IO String
readFile' path = do
    handle <- openFile path ReadMode
    hGetContents handle

crosstime :: Num xt => [xt] -> [xt] -> [xt]
crosstime [] xt = []
crosstime xs [] = []
crosstime (x:xs) xt = (map ((*) x) xt) ++ (crosstime xs xt)

crossadd :: Num xt => [xt] -> [xt] -> [xt]
crosstime [] xt = []
crosstime xs [] = []
crosstime (x:xs) xt = (map ((+) x) xt) ++ (crosstime xs xt)


main = do
    -- pathA <- getLine
    let pathA = "test/test.txt"
    -- handleA <- openFile pathA ReadMode
    -- pathB <- getLine
    let pathB = "test/test.txt"
    contentsA <- readFile' pathA
    contentsB <- readFile' pathB
    -- handleB <- openFile pathB ReadMode
    -- contentsA <- hGetContents handleA
    -- contentsB <- hGetContents handleB
    let contentsNumA = (map read (lines contentsA) :: [Int])   -- :: 是會包到最外麵
        contentsNumB = (map read (lines contentsB) :: [Int])
        result = crossadd contentsNumA contentsNumB
    print result
