{-
Define the function
flip :: (a -> b -> c) -> (b -> a -> c)
which reverses the order in which its function argument takes its arguments.
The following example shows the effect of flip:
Prelude> flip div 3 100
33
-}

my_flip :: (a -> b -> c) -> (b -> a -> c)
my_flip f a b = f b a