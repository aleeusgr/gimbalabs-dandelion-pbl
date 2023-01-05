module MyLib (someFunc) where

--for all (a, b, c) strings
--the concatenation of a, b and c always contains b

add' :: Int -> Int -> Int
add' x y = x + y
--
concat'' :: [Char] -> [Char] -> [Char]
concat'' x y = x ++ y

someFunc :: IO ()
someFunc = do
  print $ add' 3 4
  print $ concat'' "3" "4"
