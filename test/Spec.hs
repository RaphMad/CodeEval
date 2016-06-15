module Main where

import Test.Hspec
import qualified FizzBuzzTests

main :: IO ()
main = hspec $ do
   FizzBuzzTests.tests
