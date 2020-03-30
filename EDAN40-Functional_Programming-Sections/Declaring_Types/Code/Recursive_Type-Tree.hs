data Tree a = Leaf a
            | Node (Tree a) a (Tree a) -- This nodes value is stored "in the middle"

t :: Tree Int
t = Node (Node (Leaf 1) 3 (Leaf 4)) 5 (Node (Leaf 6) 7 (Leaf 9))

flatten :: Tree a -> [a]
flatten (Leaf n) = [n]
flatten (Node l v r) = flatten l ++ [v] ++ flatten r

occurs :: a -> Tree a -> Bool
occurs m (Leaf n) = m == n
occurs m (Node l v r) = occurs m l ||
                        m == v ||
                        occurs m r
