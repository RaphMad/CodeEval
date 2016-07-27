-- REMOVE THIS DECLARATION WHEN UPLOADING THE FILE TO www.codeeval.com!!!
module SumOfPrimes where

main :: IO ()
main = print $ sumOfPrimes 1000

sumOfPrimes :: Integer -> Integer
sumOfPrimes n = sum $ take (fromIntegral n) primes

primes :: [Integer]
primes = 2 : [n | n <- 2 : [3..], not $ any (`divides` n) [2..sqrtInteger n]]

sqrtInteger :: Integer -> Integer
sqrtInteger = ceiling . (sqrt :: Double -> Double) . fromIntegral

divides :: Integer -> Integer -> Bool
divides d n = n `rem` d == 0
