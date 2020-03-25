-- Mathematical definition of Fibonacci's Sequence. This is not an efficient implementation.
fibonacci :: Int -> Int
fibonacci 0 = 0 -- Base case 1, since sometimes we subtract by 2
fibonacci 1 = 1 -- Base case 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
