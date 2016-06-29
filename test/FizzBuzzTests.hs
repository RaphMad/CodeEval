module FizzBuzzTests where

import FizzBuzz
import Test.Hspec

tests = it "should work for the provided examples" $ do
   fizzBuzz "3 5 10" `shouldBe` "1 2 F 4 B F 7 8 F B"
   fizzBuzz "2 7 15" `shouldBe` "1 F 3 F 5 F B F 9 F 11 F 13 FB 15"
