bsort :: [Int] -> [Int]

bsort ls = foldl f [] ls

f :: [Int] -> Int -> [Int]
f [] k = [k]
f (x:xs) k = (f xs (min x k)) ++ [(max x k)]