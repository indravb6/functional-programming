-- Define the length function using map and sum

my_length :: [Int] -> Int
my_length ls = sum (map (\_ -> 1) ls)