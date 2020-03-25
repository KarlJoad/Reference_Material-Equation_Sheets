listLength :: [a] -> Int
listLength xs = sum [1 | _ <- xs] -- _ here means we don't care what is in xs
{- Rather, all we care about is being able to GO THROUGH the list itself, and
   create another list of ALL 1s, then sum that list up, getting a single int
   that represents the length of the input list.
 -}
