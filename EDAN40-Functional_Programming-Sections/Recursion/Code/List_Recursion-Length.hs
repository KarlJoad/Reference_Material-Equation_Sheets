myLength :: [a] -> Int
myLength [] = 0 -- The empty list has length 0
myLength (_:xs) = 1 + myLength xs
-- As we don't care about the actual value of x here, we can use the wildcard "_"
