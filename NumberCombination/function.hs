


-- [1, 2, 3] [3, 4, 5]


-- [3, 4, 5], [6, 8, 10], [9, 12, 15]

--
crosstime :: Num xt => [xt] -> [xt] -> [xt]
crosstime [] xt = []
crosstime xs [] = []
crosstime (x:xs) xt = (map ((*) x) xt) ++ (crosstime xs xt)


crosstime' :: Num a => [a] -> [a] -> [a]
crosstime' []     ys     = []
crosstime' (x:xs) []     = []
crosstime' (x:xs) (y:ys) = map ((*) x) (y:ys) ++ crosstime xs (y:ys)

crosstime'' :: Num a => [a] -> [a] -> [a]
crosstime'' xs ys = ys >>= f
    where   f z = map ((*) z) xs
