module ReverseWordsTests where

import ReverseWords
import Test.Hspec

tests :: SpecWith ()
tests = describe "ReverseWords" $
   it "should work for the provided examples" $ do
      reverseWords "Hello World" `shouldBe` "World Hello"
      reverseWords "Hello CodeEval" `shouldBe` "CodeEval Hello"
