import Test.HUnit
import System.Exit (exitSuccess, exitFailure)

import Exercises

-- 1. Factorial Function
testFactorial :: Test
testFactorial = TestCase $ assertEqual "factorial 6 should be 720" 720 (Exercises.factorial 6)
testFactorialZero :: Test
testFactorialZero = TestCase $ assertEqual "factorial 0 should be 1" 1 (Exercises.factorial 0)

factorialTests :: Test
factorialTests = TestLabel "Factorial Tests" (TestList [testFactorial, testFactorialZero])

-- 2. Fibonacci Sequence
testFibonacci :: Test
testFibonacci = TestCase $ assertEqual "factorial 6 should be 8" 8 (Exercises.fib 6)
testFibonacciZero :: Test
testFibonacciZero = TestCase $ assertEqual "factorial 0 should be 0" 0 (Exercises.fib 0)
testFibonacciOne :: Test
testFibonacciOne = TestCase $ assertEqual "factorial 1 should be 1" 1 (Exercises.fib 1)

fibonacciTests :: Test
fibonacciTests = TestLabel "Fibonacci Tests" (TestList [testFibonacci, testFibonacciZero, testFibonacciOne])

-- 3. List Sum
testSumList :: Test
testSumList = TestCase $ assertEqual "sum list should be 6" 6  (Exercises.sumList [1, 2, 3, 0])
testSumListZero :: Test
testSumListZero = TestCase $ assertEqual "sum list with empty list should be 0" 0  (Exercises.sumList [])

sumListTests :: Test
sumListTests = TestLabel "List Sum Tests" (TestList [testSumList, testSumListZero])

allTests :: Test
allTests = TestList [factorialTests, fibonacciTests, sumListTests]

main :: IO ()
main = do
    results <- runTestTT allTests
    if failures results == 0 && errors results == 0
        then exitSuccess
        else exitFailure
