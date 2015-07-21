doubleMe x = x + x

doubleUs x y = x*2 + y*2

testMatch 7 = "Got it!"
testMatch x = "Missed!"

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

boombang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- map :: (a -> a) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = f x : map f xs
