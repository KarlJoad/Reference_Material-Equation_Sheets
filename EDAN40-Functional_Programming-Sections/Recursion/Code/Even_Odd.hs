myEven :: Int -> Bool
myEven 0 = True -- 0 IS even
myEven n = myOdd (n-1) -- If n is even, then taking 1 away will make it odd.

myOdd :: Int -> Bool
myOdd 0 = False
myOdd n = myEven (n-1) -- If n is odd, then taking 1 away will make it even.
