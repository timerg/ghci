data Bool = False | True    -- part after "=" is  value constructors.
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
-- ghci> :t Circle
    Circle :: Float -> Float -> Float -> Shape
-- So here value constructors is : Circle:: Float -> Float -> Float
  -- if we try to just print out Circle 10 20 5 in the prompt,
  --     because Haskell doesn't know how to display our data type as a string (yet).
data Shape = Circle Float Float Float deriving(Show)
data Point = Point Float Float deriving(Show)

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r


-- Export the functions and types that we defined here in a module: --

module Shapes
( Point(..)
, Shape(..)
, surface
, nudge
, baseCircle
, baseRect
) where
