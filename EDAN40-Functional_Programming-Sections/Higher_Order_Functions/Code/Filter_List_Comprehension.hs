filter :: (a -> Bool) -> [a] -> [a]
filter p xs = [x | x <- xs, p x]
