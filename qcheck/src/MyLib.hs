module MyLib (someFunc, split, unsplit) where

import Data.List (intercalate)

--now I need to express the following statement as a property in QuickCheck.
--for all (a, b, c) strings
--the concatenation of a, b and c always contains b
add' :: Int -> Int -> Int
add' x y = x + y

concat' :: [Char] -> [Char] -> [Char]
concat' x y = x ++ y

-- working example
split :: Eq a => a -> [a] -> [[a]]
split _ [] = []
split c xs = xs' : if null xs'' then [] else split c (tail xs'')
    where xs' = takeWhile (/=c) xs
          xs''= dropWhile (/=c) xs

unsplit :: Char -> [String] -> String
unsplit c = intercalate [c]

someFunc :: IO ()
someFunc = do
-- show
  print $ add' 3 4
  print $ concat' "3" "4"
  print $ split '@' "pbv@dcc.fc.up.pt"
