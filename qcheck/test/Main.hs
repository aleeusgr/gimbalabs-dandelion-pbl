module Main (main) where

import Test.QuickCheck

prop_revapp :: [Int] -> [Int] -> Bool
prop_revapp ys xs = reverse (xs++ys) == reverse xs ++ reverse ys

main :: IO ()
main = quickCheck prop_revapp
