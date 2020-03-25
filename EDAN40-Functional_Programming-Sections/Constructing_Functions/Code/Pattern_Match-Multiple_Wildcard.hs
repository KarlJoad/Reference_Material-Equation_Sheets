newAnd :: Bool -> Bool -> [Char]
newAnd True True = "True"
newAnd True False = "False"
newAnd False True = "False"
newAnd False False = "False"

-- We can make the definition of newAnd even better.
newAnd' :: Bool -> Bool -> [Char]
newAnd' True True = "True"
newAnd' _ _ = "False"

-- Both of these definitions are functionally equivalent.

-- The logical and operator is actually implemented like so, shown below.
realAnd :: Bool -> Bool -> Bool
realAnd True b = b -- We can use b throughout this pattern to reference the second argument.
realAnd False _ = False
