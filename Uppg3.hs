-- Uppgift 3

numberChain :: Int -> Int -> [Int]
numberChain num goal 
    -- | num == goal = [goal]
    | otherwise = step num goal


step :: Int -> Int -> [Int]
step num goal
    | num > goal = [num] ++ step (num-3) goal
    | num < goal = [num] ++ step (num+2) goal
    | otherwise = [goal]
