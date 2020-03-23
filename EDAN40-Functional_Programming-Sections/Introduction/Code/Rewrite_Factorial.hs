factorial 0 = 1 -- For argument 0, return 1
factorial n = n * factorial (n-1) -- For any other argument, return n * ((n-1) * ((n-1-1) * ... * (n-n)))

-- If we call factorial 3, what happens?
-- We can show what happens with REWRITE SEMANTICS
-- f 3 = 3 * f 2
--     = 3 * 2 * f 1
--     = 6 * 1 * f 0
--     = 6 * 1
--     = 6
