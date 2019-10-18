pythaTriple :: [(Int, Int, Int)]
pythaTriple = [(a, b, c) | c <- [1..], b <- [1..c], a <- [1..b], a*a+b*b==c*c]