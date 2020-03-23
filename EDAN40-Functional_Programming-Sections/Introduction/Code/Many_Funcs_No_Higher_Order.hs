mySum [] = 0
mySum(x:xs) = x + (mySum xs)

myProd [] = 1
myProd (x:xs) = x * (myProd xs)

anyTrue [] = False
anyTrue (x:xs) = x || (anyTrue xs)

allTrue [] = True
allTrue (x:xs) = x && (allTrue xs)
