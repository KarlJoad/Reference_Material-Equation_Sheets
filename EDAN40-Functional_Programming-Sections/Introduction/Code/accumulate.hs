accumulate f i [] = i -- i serves as an initial value, to start the accumulation from
-- Apply the accumulation function using a function
-- accumulate:: Int->(Int->Int)->Int->[Int]->Int
accumulate f i (x:xs) = f x (accumulate f i xs)

-- Now that accumulate is written,
sum2 = accumulate (+) 0 -- Written this way, the function with name sum2 will behave the same as sum1
-- sum 2 is now a FUNCTION that takes in a list and returns the accumulated value of all elements

product2 = accumulate (*) 1 -- Product of all terms in a given list
anyTrue2 = accumulate (||) False -- Are any elements true?
allTrue2 = accumulate (&&) True -- Are ALL elements true, or any untrue?
