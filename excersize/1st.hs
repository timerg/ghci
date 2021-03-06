-- remember to ask what means before =>


import Data.List  -- imports are usually done at the top of the file
import Data.List (nub, sort)   -- only import nub and sort function from the module
import Data.List hiding (nub) -- import all functions in Data except nub
import qualified Data.Map  -- in this way, you can use functions in Data.Map only if you type  Data.Map.filter or
import qualified Data.Map as M -- can type as M.filter

triple :: Int -> Int
triple x = x*3

doubleEach :: Int -> [Int]
doubleEach x = replicate 2 x



dp :: [Int] -> [Int] -> Int
dp xs ys = sum (zipWith (*) xs ys)

-- doubleEach' :: Int -> [Int]
-- doubleEach' x = map(*)x

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

thrd :: (Num a) => (a, a, a) -> a
thrd (_, _, x) = x

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_: xs) = 1 + length' xs

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ (x:xs) ++ " is " ++ [x]
--
second :: [a] -> a
second [] = error "shit!"   -- matches empty list, i.e. length 0
second [x] = error "dick!"  -- matches list with only one element, i.e. length 1
second (x:y:xs) = y

--second [y,x] = x
--second (z:xs) = head xs


serialnumber :: (Show a) => [a] -> String
serialnumber [] = "none"
serialnumber numb@(x:xs) = "number" ++ show x ++ show numb

listnum :: (Num a) => [a] -> a
listnum [] = 0
listnum (x:xs) = x * 10^(length xs) + listnum xs

listnum' :: (Num a) => [a] -> a
listnum' = foldr (\x acc -> x + acc * 10) 0 . reverse


head2 :: [a] -> a
head2 [] = error "jkjlkj"
head2 (x:y) = x

myLast :: [a] -> a
myLast [] = error "nana"
myLast (x:[]) = x
myLast (x:xs) = myLast xs --recursion

myButLast :: [a] -> a
myButLast [] = error "none"
myButLast (x:[]) = error "only one"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

elementAt :: [a] -> Int -> a
elementAt xs x = last(take x xs)

elementAt' :: [a] -> Int -> a
elementAt' [] 0 = error "none"
elementAt' [] a = error "null"
elementAt' (x:xs) 1 = x
elementAt' (x:xs) a = elementAt' xs (a - 1)


take' :: Int -> [a] -> [a]
take' a [] = error "null"
take' 0 xs = xs
take' a (x:xs) = take' (a - 1) xs

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = myLength xs + 1

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ x:[]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
      | weight / height ^ 2 < 18.5 = "You're underweight, you emo, you!"
      | weight / height ^ 2 == 18.5 = "You're same with me, cool!"
      | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
      | otherwise                 = "You're a whale, congratulations!"
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs      -- after the | will give a state that will do the truth and flase distinguishment

headcase' :: [a] -> a
headcase' xs = case xs of [] -> error "No head for empty lists!"
                          (x:_) -> x
