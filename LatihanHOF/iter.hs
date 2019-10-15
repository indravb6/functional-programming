{-
Give the type of, and define the function iter so that
• iter n f x = f (f (... (f x)))
where f occurs n times on the right-hand side of the equation. For instance, we
should have
iter 3 f x = f (f (f x))
and iter 0 f x should return x 
-}

iter :: Int -> (x -> x) -> x -> x
iter 0 _ x = x
iter n f x = f (iter (n - 1) f x)