data Shape = Circle Float
           | Rect Float Float
           deriving (Eq, Ord, Show, Read)

(Rect 1.0 4.0) < (Rect 2.0 3.0) -- True
(Rect 1.0 4.0) < (Rect 1.0 3.0) -- True
