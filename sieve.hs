sieve :: [Int] -> [Int]
sieve (x:xs) = [x] ++ sieve [i | i <- xs, i `mod` x /= 0]