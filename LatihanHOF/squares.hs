-- How would you define the sum of the squares of the natural numbers 1 to n using map and foldr?

squares :: Int -> Int
squares n = foldr (\a b -> a + b) 0 (map (\x -> x*x) [1..n])