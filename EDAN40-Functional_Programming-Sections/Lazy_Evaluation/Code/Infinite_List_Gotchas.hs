filter (<=5) [1..]
{- This WILL NOT TERMINATE!
   This is because filter will go through every element in the list and apply
    the predicate (<=5).
   Thus, it will return the first 5 elements [1, 2, 3, 4, 5] and will then get
    stuck running until the end of the infinite list.
 -}

takeWhile (<=5) [1..]
{- This WILL TERMINATE!
   This is because takeWhile will go through every element in the list and apply
    the predicate (<=5).
   However, it will STOP when the predicate ceases to return true.
   Thus, it will return [1, 2, 3, 4, 5]
 -}
