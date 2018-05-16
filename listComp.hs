-- cons and list comprehension examples
consList = 1 : 2 : 3 : 4 : []

evenList = [2, 4..20]

letterList = ['a', 'c'..'z']

sumOfLists = zipWith (+) [1,2,3,4] [6,7,8,9]

addTwoLists = [1,2] ++ [3,4]

listTimes3 = [ x * 3 | x <- [1..100], x * 3 <= 50]

listCompFilterDivBy9a13 = [x * 2 | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

infList = [1..]
take100 = take 100 infList

repeat2 = take 10 (repeat 2)

cycleList = take 10 (cycle [1,2,3,4,5])

multTable = [[x * y | x <- [1..10]] | y <- [1..10]]
-- returns a matrix

tupleZipIt = zip repeat2 cycleList