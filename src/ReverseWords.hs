-- REMOVE THIS DECLARATION WHEN UPLOADING THE FILE TO www.codeeval.com!!!
module ReverseWords where

import System.Environment (getArgs)

main :: IO ()
main = do
   [file] <- getArgs
   input <- readFile file
   mapM_ (putStrLn . reverseWords) $ lines input

reverseWords :: String -> String
reverseWords = unwords . reverse . words
