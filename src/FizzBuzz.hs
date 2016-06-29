module FizzBuzz where

import Control.Applicative ((<$>), (<*>), (<*))
import System.Environment (getArgs)
import Text.Parsec.String (Parser)

import Common
import Parsers

main :: IO ()
main = do
   [file] <- getArgs
   input <- readFile file
   mapM_ (putStrLn . fizzBuzz) $ lines input

fizzBuzz :: String -> String
fizzBuzz line = printSpaced . process $ parseSuccess input line

data Input = Input Int Int Int
data Output = Number Int | F | B | FB
instance Show Output where
   show (Number num) = show num
   show F            = "F"
   show B            = "B"
   show FB           = "FB"

input :: Parser Input
input = Input <$> decimal <* whitespace
              <*> decimal <* whitespace
              <*> decimal

process :: Input -> [Output]
process (Input x y n) = map checkFizzBuzz [1..n]
   where checkFizzBuzz n | n `rem` x == 0 && n `rem` y == 0 = FB
                         | n `rem` x == 0                   = F
                         | n `rem` y == 0                   = B
                         | otherwise                        = Number n
