-- List Comprehensions and Higher-Order Functions
-- Can you rewrite the following list comprehensions using the higher-order
-- functions map and filter? You might need the function concat too.

-- 1. [ x+1 | x <- xs ]
f1 xs = map (+1) xs

-- 2. [ x+y | x <- xs, y <-ys ]
f2 [] [] = []
f2 (x:xs) (y:ys) = [(x, y)] ++ f2 xs ys

-- 3. [ x+2 | x <- xs, x > 3 ]
f3 xs = map (+2) (filter (>3) xs)

-- 4. [ x+3 | (x,_) <- xys ]
f4 xys = map (\(x, _) -> x+3) xys

-- 5. [ x+4 | (x,y) <- xys, x+y < 5 ]
f5 xys = map (\(x, y) -> x+4) (filter (\(x, y) -> x + y < 5) xys)

-- 6. [ x+5 | Just x <- mxs ]
f6 mxs = map (\(Just x) -> x+5)


-- Can you it the other way around? I.e. rewrite the following expressions as list comprehensions.

-- 1. map (+3) xs
g1 xs = [x+3 | x <- xs]

-- 2. filter (>7) xs
g2 xs = [x | x <- xs, x > 7]

-- 3. concat (map (\x -> map (\y -> (x,y)) ys) xs)
g3 xs ys = [(x, y) | x <- xs, y <- ys]

-- 4. filter (>3) (map (\(x,y) -> x+y) xys)
g4 xys = [fst i + snd i | i <- xys, fst i + snd i > 3]