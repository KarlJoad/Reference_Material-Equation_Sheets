-- First, let's pair each of the elements up together
pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)

-- Now that we can generate a list of pairs, we can now pairwise compare them
sorted :: Ord a=> [a] -> Bool -- Here, we require that the type a be part of the Ord typeclass
sorted xs = and[x <= y | (x, y) <- pairs xs]
-- A list of booleans are returned by the list comprehension
-- The and goes through and logically and's them together.
-- If any single element is false, the whole thing becomes false.
