foldr :: (a -> b -> b) -> b -> [a] -> b
{- foldr takes:
   1) A function, which itself takes 2 parameters and returns one value. (+, for example)
   2) An initial value, for the base case of the list being empty
   3) The list to operate on.
 -}
foldr f v [] = v
foldr f v (x:xs) = f x (foldr f v xs)
