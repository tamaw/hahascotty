{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Data.Monoid (mconcat)
import qualified Data.Text.Lazy as T (Text, reverse) 
import Lib
import Data.Maybe

main = scotty 3000 $ do
  get "/" $ text "hello"
  get "/api/ReverseWords" $ do
    sentence <- param "sentence"
    json $ reverseString sentence
  get "/api/fib" $ do
    n <- param "n"
    json $ fibn n
  get "/api/TriangleType" $ do
    a <- param "a"
    b <- param "b"
    c <- param "c"
    let triangle = triangleType a b c
    json $ case triangle of 
            Just t -> show t
            Nothing -> "Error"
