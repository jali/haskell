times4 :: Int -> Int
times4 n = n * 4
-- Higher order functiuons
-- Passing a function to a function
doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4
-- returns 12


-- return a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
retAdd4 = getAddFunc 4
-- call it like retAdd4 10
-- returns 14
numPlus4 = retAdd4 10
-- use it with map too
-- map retAdd4 [1,2,3,4,5]