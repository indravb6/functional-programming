--  Buatlah definisi infinite list untuk permutation.

sub :: [Int] -> Int -> [Int]
sub [] k = []
sub (x:xs) k = if x == k then xs else [x] ++ (sub xs k)

permut :: [Int] -> [[Int]]
permut [x] = [[x]]
permut ls = [[i] ++ rem | i <- ls, rem <- permut (sub ls i)]