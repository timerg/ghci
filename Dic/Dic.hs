-- data Maybe a = Nothing | Just a deriving(Eq)
data List a = Nil | Cons a (List a) deriving (Show, Eq, Ord)

length' :: (List a) -> Int
length' Nil = 0
length' (Cons a b) = 1 + length' b

filter' :: (a -> Bool) -> List a -> List a
filter' f Nil = Nil
filter' f (Cons b c)
    | f b == True = Cons b (filter' f c)
    | f b == False = filter' f c

map' :: (a -> b) -> List a -> List b
map' f Nil = Nil
map' f (Cons a c) = Cons (f a) (map' f c)

-- append ::  a -> List a -> List a
-- append a Nil = Cons a Nila
-- append a (Cons b c) = Cons a (Cons b c)

append ::  List a -> List a -> List a
append Nil b         = b
append (Cons x xs) b = Cons x (append xs b)

reverse' :: List a -> List a
reverse' Nil = Nil
reverse' (Cons a b) = append (reverse' b) (Cons a Nil)


-- a Binary Tree
data Tree a = Leaf | Branch a (Tree a) (Tree a) deriving (Show, Eq, Ord)


tree0 :: Tree Int
tree0 = Branch 0 (Branch 1 Leaf Leaf) (Branch 0 Leaf Leaf)

tree1 :: Tree Int
tree1 = Branch 1 (Branch 1 Leaf Leaf) (Branch 0 Leaf Leaf)

height :: Tree a -> Int
height Leaf = 0
height (Branch _ a b) = 1 + max (height a) (height b)

size :: Tree a -> Int
size Leaf = 0
size (Branch _ a b) = 1 + size a + size b

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree f Leaf = Leaf
mapTree f (Branch a b c) = Branch (f a) (mapTree f b) (mapTree f c)

mapMaybe :: (a -> b) -> Maybe a -> Maybe b
mapMaybe f Nothing = Nothing
mapMaybe f (Just a) = Just (f a)

-- insert :: Tree a -> a -> Tree a


ttt :: Tree Char
ttt = Branch '-'
        (Branch '+'
            (Branch '1' Leaf Leaf)
            (Branch '*'
                (Branch '2' Leaf Leaf)
                (Branch '3' Leaf Leaf)
            )
        )
        (Branch '*'
            (Branch '2' Leaf Leaf)
            (Branch '5' Leaf Leaf)
        )
-- (1 + (2 * 3)) - (2 * 5)      in-order
--
--
--               -
--    +                *
--  1      *         2    5
--       2   3
--
-- (- (+ 1 (* 2 3)) (* 2 5))      pre-order
--
-- ((1 (2 3 *) +) (2 5 *) -)  post-order

inOrder :: Tree a -> List a
inOrder Leaf             = Nil
inOrder (Branch a xs ys) = inOrder xs `append` (Cons a Nil) `append` inOrder ys

preOrder :: Tree a -> List a
preOrder Leaf           = Nil
preOrder (Branch a xs ys) = Cons a (preOrder xs `append` preOrder ys)

postOrder :: Tree a -> List a
postOrder Leaf = Nil
postOrder (Branch a xs ys) = postOrder xs `append` postOrder ys `append` Cons a Nil

-- ROSE TREE
data RoseTree a = RoseTree a [RoseTree a] deriving(Show, Ord, Eq)

rTree0 :: RoseTree String
rTree0 = RoseTree "hee"
            [RoseTree "foo"
                [RoseTree "urr" [],
                RoseTree "hmm" [],
                RoseTree "woo" []
                ],
            RoseTree "wii" []
            ]

-- map :: (a -> b) -> RoseTree -> RoseTree
-- filter :: (a -> Bool) -> RoseTree -> RoseTree
-- size :: RoseTree -> Int
-- height :: RoseTree -> Int

preOrder' :: RoseTree a -> [a]
preOrder' (RoseTree a []) = a:[]
preOrder' (RoseTree a [b]) = a:(preOrder b)



--
