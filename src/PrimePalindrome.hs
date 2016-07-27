-- REMOVE THIS DECLARATION WHEN UPLOADING THE FILE TO www.codeeval.com!!!
module PrimePalindrome where

main :: IO ()
main = print $ largestPrimePalindromeLessThan 1000

largestPrimePalindromeLessThan :: Integer -> Integer
largestPrimePalindromeLessThan n = last . filter isPalindrome . takeWhile (< n) $ primes

primes :: [Integer]
primes = 2 : [n | n <- 2 : [3..], not $ any (`divides` n) [2..sqrtInteger n]]

sqrtInteger :: Integer -> Integer
sqrtInteger = ceiling . (sqrt :: Double -> Double) . fromIntegral

divides :: Integer -> Integer -> Bool
divides d n = n `rem` d == 0

digits :: Integer -> [Integer]
digits n | q > 0     = digits q ++ [r]
         | otherwise = [r]
         where (q, r) = quotRem n 10

isPalindrome :: Integer -> Bool
isPalindrome n = digits n == reverse (digits n)
