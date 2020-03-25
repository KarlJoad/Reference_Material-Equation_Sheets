myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs -- Base case 1, we want to remove 0 elements, so return the unmodified list
myDrop n [] = [] -- Base case 2, we want to remove n more elements, but there are none left.
                 -- So, we stop recursing and return the empty list.
myDrop n (_:xs) = myDrop (n-1) xs
-- Otherwise, we want to keep dropping elements, and still have some list left.
