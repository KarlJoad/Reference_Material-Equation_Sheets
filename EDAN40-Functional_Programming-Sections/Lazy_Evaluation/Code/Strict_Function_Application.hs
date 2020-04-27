sumwith :: Int -> [Int] -> Int
sumwith v [] = v
sumwith v (x:xs) = sumwith (v+x) xs

sumwith 0 [1, 2, 3]
{- = sumwith (0 + 1) [2, 3]
   = sumwith ((0 + 1) + 2) [3]
   = sumwith (((0 + 1) + 2) + 3) []
   = ((0 + 1) + 2) + 3
   = (1 + 2) + 3
   = 3 + 3
   = 6
 -}

strictSumwith :: Int -> [Int] -> Int
strictSumwith v [] = v
strictSumwith v (x:xs) = (sumwith $! (v+x)) xs

strictSumwith 0 [1, 2, 3]
{- = sumwith $! (0 + 1) [2, 3]
   = sumwith $! 1 [2, 3]
   = sumwith 1 [2, 3]
   = sumwith $! (1 + 2) [3]
   = sumwith $! 3 [3]
   = sumwith 3 [3]
   = sumwith $! (3 + 3) []
   = sumwith $! 6 []
   = sumwith 6 []
   = 6
 -}
