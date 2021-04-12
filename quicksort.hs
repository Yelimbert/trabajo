main :: IO()
main = undefined
--quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (p:xs) = quicksort lesser ++ [p] ++ quicksort greater
    where
        quicksort lesser  = filter (< p) xs
        quicksort greater = filter (> p) xs