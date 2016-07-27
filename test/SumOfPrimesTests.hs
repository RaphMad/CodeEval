module SumOfPrimesTests where

import SumOfPrimes
import Test.Hspec

tests :: SpecWith ()
tests = describe "SumOfPrimes" $
   it "should work for the provided example" $
      sumOfPrimes 1000 `shouldBe` 3682913
