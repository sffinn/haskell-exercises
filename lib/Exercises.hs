module Exercises (
    factorial,
    fib,
) where

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)
