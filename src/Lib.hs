module Lib
    ( reverseString
     , fibn
     , triangleType 
    ) where

data Triangle =
    Scalene
    | Equilateral
    | Isosceles
    deriving Show

triangleType :: Int -> Int -> Int -> Maybe Triangle
triangleType a b c
    | a + b > c || a + c > b || b + c > a = Nothing
    | a == b && b == c && a == c = Just Equilateral
    | a == b || c == b || c == a = Just Isosceles
    | otherwise = Just Scalene

reverseString :: String -> String
reverseString s = unwords $ map reverse (words s) 

fib :: Integer -> Integer -> [Integer]
fib 0 0 = 0:fib 1 1
fib n p = p:fib (n + p) n 

fibn :: Int -> Integer
fibn n = last . take c $ fib 0 0 
        where c = n + 1
