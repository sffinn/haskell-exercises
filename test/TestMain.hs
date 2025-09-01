import Test.HUnit
import System.Exit (exitSuccess, exitFailure)

import Exercises

-- Test cases
testAdd = TestCase $ assertEqual "add 2 3 should be 5" 5 (Exercises.add 2 3)
testAddZero = TestCase $ assertEqual "add 0 0 should be 0" 0 (Exercises.add 0 0)

-- Test suite
tests = TestList [TestLabel "testAdd" testAdd, TestLabel "testAddZero" testAddZero]

main :: IO ()
main = do
  counts <- runTestTT tests
  if failures counts == 0 && errors counts == 0
    then exitSuccess
    else exitFailure
