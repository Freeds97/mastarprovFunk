-- Uppgift 3

numberChain :: Int -> Int -> [Int]
--numberChain num goal 
--numberChain list = []
numberChain num goal = step num [] goal


step :: Int -> [Int] -> Int -> [Int]
step num list goal
    | num > goal = step (num-3) (list++[num]) goal
    | num < goal = step (num+2) (list++[num]) goal
    | otherwise = (list++[num])
