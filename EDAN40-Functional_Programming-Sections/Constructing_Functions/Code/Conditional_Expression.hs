failCompile n = if n < 0 then n else True
-- THIS WILL FAIL TO COMPILE
-- BOTH branches need to have the same type

willCompile n = if n < 0 then n else -n
