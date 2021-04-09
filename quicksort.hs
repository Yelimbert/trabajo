main = undefined
quicksort1 :: (Ord a) => [a] -> [a]
quicksort1 [] = []
quicksort1 (x:xs) =
  let lowerTail = quicksort1 [a | a <- xs, a <= x]
      upperTail = quicksort1 [a | a <- xs, a > x]
  in  lowerTail ++ [x] ++ upperTail