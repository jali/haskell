divideAmong :: Int -> Int -> Maybe Int
divideAmong x y =
    if mod y x /= 0 then
        Nothing
    else
        Just (div y x)

        
        
