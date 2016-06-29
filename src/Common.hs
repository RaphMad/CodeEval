module Common where

printSpaced :: (Show a) => [a] -> String
printSpaced [] = ""
printSpaced [x] = show x
printSpaced (x : xs) = show x ++ " " ++ printSpaced xs
