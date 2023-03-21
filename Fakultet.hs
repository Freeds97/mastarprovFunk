fakultet :: Int -> Int
fakultet 0 = 1
fakultet x = x * fakultet (x-1)