myProduct :: Num a => [a] -> a -- Num a makes the requirement that a be in the number typeclass
myProduct [] = 1 -- Because 1 is the identity value for multiplication, that should be the base value
myProduct (x:xs) = x * myProduct xs
