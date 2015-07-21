doubleMe x = x + x

doubleUs x y = x*2 + y*2

testMatch 7 = "Got it!"
testMatch x = "Missed!"

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- map :: (a -> a) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = f x : map f xs
