data Cat = White Int | Black Int deriving (Show)

paint :: Cat  -> Cat
paint (White a) = Black a
paint (Black a) = White a

kick :: Cat  -> Cat
kick (White a) = White $ a + 1
kick (Black a) = Black $ a + 1

data List a = Nil | Cons a (List a) deriving (Show)
data List2 a = Nil2 | Cons2 a deriving (Show)

a0 :: List Int
a0 = Nil

a1 :: List Int
a1 = Cons 0 a0

a4 :: List Bool
a4 = Cons False (Cons True (Cons True Nil))
-- a2 :: List
-- a2 = Cons 23 (Cons 18 Nil)
--
-- null' :: List -> Bool
-- null' Nil = True
-- null' _ = False

length' :: List a -> Int
length' Nil = 0
length' (Cons _ a) = 1 + length' a
--
-- sum' :: List -> Int
-- sum' Nil = 0
-- sum' (Cons b a) = b  + sum' a

addList :: (Num a) => List a -> List a -> List a
addList Nil Nil = Nil
addList Nil a = a
addList a Nil = a
addList (Cons a1 b1) (Cons a2 b2) = Cons (a1 + a2) (addList b1 b2)


data ListString = NilSt | ConsSt String ListString deriving (Show)

data Dog = Dog1 {name :: String,
                old :: Int,
                height :: Float
                } deriving(Show)
-- askdog :: Dog -> String
-- askdog = Dog "wang" 1 1.3











--
