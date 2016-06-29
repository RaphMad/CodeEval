-- REMOVE THIS DECLARATION WHEN UPLOADING THE FILE!!!
module FizzBuzz where

import System.Environment (getArgs)

main :: IO ()
main = do
   [file] <- getArgs
   input <- readFile file
   mapM_ (putStrLn . fizzBuzz) $ lines input

fizzBuzz :: String -> String
fizzBuzz line = printSpaced . process $ parse line

data Input = Input Int Int Int
data Output = Number Int | F | B | FB
instance Show Output where
   show (Number num) = show num
   show F            = "F"
   show B            = "B"
   show FB           = "FB"

parse :: String -> Input
parse line = Input x y n
   where [x, y, n] = map read $ words line

process :: Input -> [Output]
process (Input x y n) = map checkFizzBuzz [1..n]
   where checkFizzBuzz n | n `rem` x == 0 && n `rem` y == 0 = FB
                         | n `rem` x == 0                   = F
                         | n `rem` y == 0                   = B
                         | otherwise                        = Number n

printSpaced :: (Show a) => [a] -> String
printSpaced [] = ""
printSpaced [x] = show x
printSpaced (x : xs) = show x ++ " " ++ printSpaced xs
