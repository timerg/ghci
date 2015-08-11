import System.IO
import Data.List
import qualified Data.Text.IO as Text

readFile' :: String -> IO String
readFile' path = do
    handle <- openFile path ReadMode  -- will give a handle. Actually One can use "ReadFile", which will simply give IO String
    hGetContents handle -- will conduct the handle

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
-- zip
    print result
