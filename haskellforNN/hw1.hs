import System.Random

rand :: Float -> Float -> [Float]
rand UpperBound LowerBound
    | UpperBound == LowerBound = error "no sintervel"
    | UpperBound /= LowerBound = do
        mkStdGen
