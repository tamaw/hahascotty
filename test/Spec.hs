import Test.QuickCheck (quickCheck, Positive, Small)

import Lib 

main :: IO ()
main = do 
    quickCheck test

test :: Int -> Bool
test a = fibn a == fibn a
