curryAdd :: Int -> (Int -> Int)
curryAdd x = \y -> (x + y)

-- We can partially apply the curryAdd function now too.
add5 = curryAdd 5
-- add5 is now a function Int -> Int that adds 5 to any provided integer
val1 = add5 10 -- = 15
val2 = add5 (-5) -- = 0
