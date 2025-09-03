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

allTests :: Test
allTests = TestList [factorialTests]

main :: IO ()
main = do
    results <- runTestTT allTests
    if failures results == 0 && errors results == 0
        then exitSuccess
        else exitFailure
