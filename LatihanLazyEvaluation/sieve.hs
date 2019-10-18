-- Buatlah definisi untuk memberikan infinite list dari bilangan prima menerapkan algoritma Sieve of Erastothenes.

sieve :: [Int] -> [Int]
sieve (x:xs) = [x] ++ sieve [i | i <- xs, i `mod` x /= 0]