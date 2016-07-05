-- REMOVE THIS DECLARATION WHEN UPLOADING THE FILE TO www.codeeval.com!!!
module PrimePalindrome where

main :: IO ()
main = print $ largestPrimePalindromeLessThan 1000

largestPrimePalindromeLessThan :: Integer -> Integer
largestPrimePalindromeLessThan _ = 5

primes :: [Integer]
primes = [n | n <- 2 : [3..], not $ any (`divides` n) [2..sqrtInteger n]]

sqrtInteger :: Integer -> Integer
sqrtInteger = ceiling . (sqrt :: Double -> Double) . fromIntegral

divides :: Integer -> Integer -> Bool
divides d n = n `rem` d == 0
