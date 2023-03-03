-- uppgift 1 

squarePositive :: [Int] -> [Int]
squarePositive x = map (^2) (filter (>0) x) -- Map och filter är högre ordningen, eftersom vi tar flera argument som input.
