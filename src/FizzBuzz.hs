module FizzBuzz where

import System.Environment (getArgs)

main :: IO ()
main = do
   [file] <- getArgs
   input <- readFile file
   mapM_ (putStrLn . fizzBuzz) $ lines input

fizzBuzz :: String -> String
fizzBuzz = id
