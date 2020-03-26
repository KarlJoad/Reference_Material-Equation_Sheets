map :: (a -> b) -> [a] -> [b]
map f xs = [f x | x <- xs]
