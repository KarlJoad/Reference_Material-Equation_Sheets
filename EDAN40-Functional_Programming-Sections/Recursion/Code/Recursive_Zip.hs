myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = [] -- Base case 1: List a is empty -> Return empty list
myZip _ [] = [] -- Base case 2: List b is empty -> Return empty list
myZip (x:xs) (y:ys) = (x,y):(myZip xs ys)
-- Otherwise, make a tuple out of the current elements, and recurse
-- the rest of the way through the list.
