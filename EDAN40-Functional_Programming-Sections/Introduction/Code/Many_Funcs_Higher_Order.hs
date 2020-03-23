-- allElementsListFunction :: (t1 -> t2 -> t2) -> t3 -> [t1] -> t2
-- Takes a function that takes 2 things and spits out a third (t1 -> t2 -> t2)
-- Also takes a thing (t3)
-- Lastly, takes a list of thing t1 ([t1])
-- Returns a value of the same type as t2 (t2)
allElementsListFunction func initVal [] = initVal
allElementsListFunction func initVal (x:xs) = func x (allElementsListFunction func initVal xs)

-- After writing this function, when it is applied in the way below, each of the EXPRESSIONS,
-- my...2 is ALSO a function, which can be called.
mySum2 = allElementsListFunction (+) 0 -- Written this way, calling mySum2 is identical to calling sum1
myProd2 = allElementsListFunction (*) 1
anyTrue2 = allElementsListFunction (||) False
allTrue2 = allElementsListFunction (&&) True
-- Each operator provided (+, *, ||, &&) is a function in Haskell
-- I provided a function, and the initial value, so now each of these expressions is also a function.

-- Two lists for showing below
testIntList = [1, 2, 3, 4]
testBoolList = [True, True, False]

mySumTotal = mySum2 testIntList -- Returns 10
myProdTotal = myProd2 testIntList -- Returns 24
anyTrueTotal = anyTrue2 testBoolList -- Returns True
allTrueTotal = allTrue2 testBoolList -- Returns False
