abs n | n >= 0 = n
      | otherwise = -n
-- otherwise is a special guard that is always true.
-- It can be thought of as the "default" option.
