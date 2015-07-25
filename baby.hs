doubleMe x = x + x

doubleUs x y = x*2 + y*2

lucky :: (Integral a) => a -> String
lucky 7 = "Got it!"
lucky x = "Missed!"

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

boombang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Type signature
removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


-- Pattern matching
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- Recursion
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

-- More recursion
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x

-- Even more recursion
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

-- recursion again
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs  ++ [x]


-- duplicate but on my own
len' :: (Num b) => [a] -> b
len' [] = 0
len' (_:xs) = 1 + len' xs


-- creating quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <=x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

-- map :: (a -> a) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = f x : map f xs
