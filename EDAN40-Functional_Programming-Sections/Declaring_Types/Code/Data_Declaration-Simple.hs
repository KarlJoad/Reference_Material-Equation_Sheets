type Position = (Int, Int)
type Board = [Position]
data Move = Left
          | Right
          | Up
          | Down

move :: Move -> Position -> Position
move Left (x, y) = (x-1, y)
move Right (x, y) = (x+1, y)
-- These seem backwards because the origin is upper-left on the monitor
move Up (x, y) = (x, y-1)
move Down (x, y) = (x, y+1)

moves :: [Move] -> Position -> Position
moves [] p = p
moves (m:ms) p = moves ms (move m p)

flip :: Move -> Move
flip Left = Right
flip Right = Left
flip Up = Down
flip Down = Up
