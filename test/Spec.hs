module Main where

import Test.Hspec
import qualified FizzBuzzTests
import qualified PrimePalindromeTests

main :: IO ()
main = hspec $ do
   FizzBuzzTests.tests
   PrimePalindromeTests.tests
