-- The expression primes will NOT be computed until we ask the system to.
-- As soon as we do, it will be stuck in an "infinite loop", finding all primes
primes = sieve [2..] -- Infinite list of natural numbers, starting from 2
         where
           sieve (n:ns) =
               n : sieve [x | x <- ns, (x `mod` n) > 0]
