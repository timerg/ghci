-- main = do
--     putStrLn "Hello, what's your name?"
--     name <- getLine
--     putStrLn ("Hey " ++ name ++ ", you rock!")
-- main = do
--     line <- getLine
--     if null line
--         then return "haha"
--         else do
--             putStrLn $ reverseWords line
--             main
--
-- reverseWords :: String -> String
-- reverseWords = unwords . map reverse . words

-- main = do
--     return ()
--     return "HAHAHA"
--     line <- getLine
--     return "BLAH BLAH BLAH"
--     return 4
--     putStrLn line
-- -- those "HAHAHA", "BLAH BLAH BLAH "...do nothing since they don't bind to any name


myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ x:[]

god :: String -> IO ()
god s = do
    putStrLn $ s ++ " fuck!"

main :: IO ()
main = do
    water <- getLine :: IO String
    -- word :: String
    god water

-- main = getLine >>= sayfuck
    -- return ()
    -- putStrLn $ a ++ " " ++ b



-- about >>=
-- (>>=) :: Monad m => m a -> (a -> m b) -> m b
-- a is water, b is wine
    -- getLine :: IO String
    -- now IO is the bottle
