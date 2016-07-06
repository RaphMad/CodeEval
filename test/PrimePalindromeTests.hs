module PrimePalindromeTests where

import PrimePalindrome
import Test.Hspec

tests :: SpecWith ()
tests = describe "PrimePalindrome" $
   it "should work for the provided example" $
      largestPrimePalindromeLessThan 1000 `shouldBe` 929
