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
        