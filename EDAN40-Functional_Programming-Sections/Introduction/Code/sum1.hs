sum1 [] = 0
sum1(x:xs) = x + (sum1 xs)
