{-
Buatlah fungsi divisor yang menerima sebuah bilangan bulat n dan mengembalikan
list bilangan bulat positif yang membagi habis n, Contoh:
LatihanLazy> divisor 12
[1,2,3,4,6,12]
-}

divisor :: Int -> [Int]
divisor x = [i | i <- [1..x], x `mod` i == 0]