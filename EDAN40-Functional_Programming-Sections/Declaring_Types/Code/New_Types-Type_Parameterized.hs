type Parser a = String -> [(a, String)]
type IO a = World -> (a, World)

-- Multiple type parameters
type Association key value = [(key, value)]

-- Using the multiple type parameters to simplify functions
find :: Eq k => Association k v -> v
find k t = head [v | (k', v) <- t, k == k']
