* triple an integer

> triple :: Int -> Int
>> let triple x = x*3

* double each integer of a list

> doubleEach :: Int -> [Int]
>> let doubleEach x = replicate 2 x

* dot product

> dp :: [Int] -> [Int] -> Int
>> let dp xs = [x*x | x <- xs]

* rewrite `doubleEach` with `map :: (a -> b) -> [a] -> [b]`

> doubleEach' :: Int -> [Int]
>> let doubleEach x = map(*2)x
