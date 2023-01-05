module Main (main) where

import Test.QuickCheck
import Data.List (intercalate)

split :: Char -> String -> [String]
split _ [] = []
split c xs = xs' : if null xs'' then [] else split c (tail xs'')
    where xs' = takeWhile (/=c) xs
          xs''= dropWhile (/=c) xs

unsplit :: Char -> [String] -> String
unsplit c = intercalate [c]

-- show
prop_split_inv c xs 
    = let ys = split c xs in 
      collect (length ys) $ unsplit c ys == xs

main :: IO()
main = do
  quickCheck prop_split_inv
