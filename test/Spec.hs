module Main where

import Test.Hspec
import qualified FizzBuzzTests
import qualified PrimePalindromeTests
import qualified SumOfPrimesTests
import qualified ReverseWordsTests

main :: IO ()
main = hspec $ do
   FizzBuzzTests.tests
   PrimePalindromeTests.tests
   SumOfPrimesTests.tests
   ReverseWordsTests.tests
