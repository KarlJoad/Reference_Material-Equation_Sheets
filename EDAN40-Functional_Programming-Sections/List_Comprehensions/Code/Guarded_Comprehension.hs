factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]
{- Returns the list of all numbers from 1 to n that when divided
   by x, have a modulo of 0, i.e. they are factors of n.
   They CANNOT be multiples of n, because that would require us to go past
   the n provided.
 -}

prime :: Int -> Bool
prime n = factors n == [1,n]
-- Because of lazy evaluation, the False result is returned as soon as ANY
-- factor other than one or the number itself is produced.

-- Using the 2 above functions, we can now generate all primes up to some value
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]
