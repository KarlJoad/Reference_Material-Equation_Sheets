-- Counts the number of lowercase characters in a String
countLowers :: String -> Int
countLowers xs = length [x | x <- xs, isLower x]
-- isLower returns True/False if x is lowercase
countLowers "Haskell"
-- 6

-- Count the number of a chosen letter present in a given String
countLetter :: Char -> string -> Int
countLetter x xs = length [x' | x' <- xs, x==x']
countLetter 's' "Mississippi"
-- 4
