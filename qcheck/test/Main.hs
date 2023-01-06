module Main (main) where

import Test.QuickCheck
import MyLib 

prop_split_inv c xs 
    = let ys = split c xs in 
      collect (length ys) $ unsplit c ys == xs

main :: IO()
main = do
  quickCheck prop_split_inv
