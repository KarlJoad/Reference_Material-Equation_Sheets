filter p [] = []
filter p (x:xs) | p x = x:filter p xs -- Predicate is true. Keep current element, recurse
                | otherwise filter p xs -- The predicate is false. Drop current element.
