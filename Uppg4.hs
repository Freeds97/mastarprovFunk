-- Uppgift 4

totalDistance :: [(Double,Double)] -> Double
totalDistance [] = 0
totalDistance [(a,b)] = 0
totalDistance x = (sqrt ((((fst (head x)) - (fst (head (tail x))))^2)+(((snd (head x)) - (snd (head (tail x))))^2))) + totalDistance(tail x)
