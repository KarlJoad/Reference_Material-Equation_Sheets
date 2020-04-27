-- The expression primes will NOT be computed until we ask the system to.
-- As soon as we do, it will be stuck in an "infinite loop", finding all primes
primes :: [Int]
primes = sieve [2..] -- Infinite list of natural numbers, starting from 2

sieve :: [Int] -> [Int]
sieve (p : xs) = p : sieve [x | x <- xs, (x `mod` p) /= 0]
