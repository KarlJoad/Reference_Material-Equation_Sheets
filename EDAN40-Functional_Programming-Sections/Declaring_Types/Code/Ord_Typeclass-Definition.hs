class Eq a => Ord a where
    (<), (<=), (>), (>=) :: a -> a -> Bool
    min, max :: a -> a -> a

    min x y | x <= y = x
            | otherwise = y
    max x y | x <= y = y
            | otherwise x
