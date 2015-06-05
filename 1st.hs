



triple :: Int -> Int
triple x = x*3

doubleEach :: Int -> [Int]
doubleEach x = replicate 2 x



dp :: [Int] -> [Int] -> Int
dp xs ys = sum (zipWith (*) xs ys)

doubleEach' :: Int -> [Int]
doubleEach' x = map(replicate x)x
