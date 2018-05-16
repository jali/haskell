increase :: (Ord a) => [a] -> Bool
increase xs = if xs == []
    then True
    else if tail xs == []
        then True
        else if head xs <= head (tail xs)
            then increase (tail xs)
            else False


increasing :: (Ord a) => [a] -> Bool
increasing (x:y:ys) = x <= y && increasing(y:ys)
increasing _ = True

--noVowels :: [Char] -> [Char]
--noVowels "" = ""
--noVowels (x:xs) = if x `elem` "aeiouAEIOU"
--    then noVowels xs
--    else x : noVowels xs
--------------------------------------------
-- we can use guards to specify a series of conditions 
-- and what we should do in each case
noVowels :: [Char] -> [Char]
noVowels "" = ""
noVowels (x:xs)
        | x `elem` "aeiouAEIOU" = noVowels xs
        | otherwise             = x : noVowels xs



watchif :: Int -> [Char]
watchif n = if n == 7 then "7 O'Clock and .. SHARKNADO!"
        else show n ++ " O'Clock and all's well."

watch :: Int -> [Char]
watch n
    | n == 7            = "7 O'Clock and .. SHARKNADO!"
    | otherwise         = show n ++ " O'Clock and all's well."

watchcase :: Int -> [Char]
watchcase n = show n ++ " O'Clock and " ++ case n of 7 -> "... SHARKNADO!"
                                                     _ -> "all's well."
        

lengthit :: [a] -> Int
lengthit [] = 0
lengthit (_:xs) = 1 + lengthit xs
-- list should be either numeric or string

-- sumit :: [Int] -> Int   
-- is the same but the one below would sum floating points too
sumit :: (Num a) => [a] -> a
sumit [] = 0
sumit (x:xs) = x + sumit xs

productit :: (Num a) => [a] -> a
productit [] = 1
productit (x:xs) = x * productit xs


maxit :: (Ord a) => [a] -> a
maxit [] = error "maximum of empty list"
maxit [x] = x
maxit (x:xs)
      | x > mx     = x
      | otherwise  = mx
      where mx = maxit xs


addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)


whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing important"


factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)


isOdd :: Int -> Bool
isOdd n
    | n `mod` 2 == 0    = False
    | otherwise         = True

isEven n = n `mod` 2 == 0


whatGrade :: Int -> String

whatGrade age 
    | ( age >= 5 ) && ( age <= 6 )    = "Kindergarten"
    | ( age > 6 ) && ( age <= 10 )    = "Elementary school"
    | ( age > 10 ) && ( age <= 14 )   = "Middle school"
    | ( age > 14 ) && ( age <= 18 )   = "High school"
    | otherwise = "Go to college"

-- [] here stands for empty rest
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "Head is " ++ show x ++ " and the rest is " ++ show xs

-- use of all
getFirstChar :: String -> String
getFirstChar [] = "Empty string"
getFirstChar all@(x:xs) = "The first letter in " ++ all ++ " is " ++ show x



times4 :: Int -> Int
times4 n = n * 4

listTimes4 = map times4 [1,2,3,4]

mapMult4 :: [Int] -> [Int]
mapMult4 [] = []
mapMult4 (x:xs) = times4 x : mapMult4 xs


areStringsEqual :: String -> String -> Bool
areStringsEqual [] [] = True
areStringsEqual (x:xs) (y:ys) 
            | x /= y    = False
            | otherwise = areStringsEqual xs ys

-- you can also say 
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x==y && areStringsEq xs ys
areStringsEq _ _ = False
            

