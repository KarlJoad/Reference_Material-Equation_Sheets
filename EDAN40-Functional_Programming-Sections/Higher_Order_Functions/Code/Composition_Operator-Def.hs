(.) :: (b -> c) -> (a -> b) -> (a -> c)
{- The type signature above seems wrong, but it is right. The composition
   operator takes 2 arguments, and produces 1 result.
   1) A function, g (a -> b)
   2) A function, f (b -> c)
   Returns a function (a -> c)
 -}
f.g = \ x -> f(g x)
