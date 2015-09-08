import System.IO
import Data.List

readFile' :: String -> IO String
readFile' path = do
    handle <- openFile path ReadMode
    hGetContents handle

main = do
    -- pathA <- getLine
    let pathA = "test.txt"

    let pathB = "test.txt"
    contentsA <- readFile' pathA
    contentsB <- readFile' pathB
    let contentsNumA = lines contentsA
        contentsNumB = lines contentsB
    
    print contentsNumA
