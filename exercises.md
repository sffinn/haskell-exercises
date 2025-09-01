## Beginner Haskell Problems
### 1. Factorial Function
  - **Problem**: Write a function `factorial :: Integer -> Integer` that computes the factorial of a non-negative integer.
  - **Description**: The factorial of n (n!) is the product of all positive integers less than or equal to n. For example, `factorial 5 = 5 * 4 * 3 * 2 * 1 = 120`. Assume `factorial 0 = 1`.
  - **Hint**: Use recursion and pattern matching. Consider a base case for 0 and a recursive case for n > 0.
### 2. Fibonacci Sequence
  - **Problem**: Write a function `fib :: Int -> Int` that returns the nth Fibonacci number, where the sequence starts with `fib 0 = 0`, `fib 1 = 1`, and each subsequent number id the sum of the previous two.
  - **Description**: For example, `fib 6` should return 8 because the sequence is 0, 1, 1, 2, 3, 5, 8.
  - **Hint**: Use recursion with base cases for 0 and 1. Be aware that naive recursion can be slow for large n. Focus on correctness first.
### 3. List Sum
  - **Problem**: Write a function `sumList :: [Int] -> Int` that computes the sum of all elements in a list of integers.
  - **Description**: For example, `sumList [1, 2, 3, 4] = 10` and `sumList [] = 0`.
  - **Hint**: Use pattern matching to handle the empty list and non-empty list cases. Recurse on the tail of the list.
### 4. Reverse a List
  - **Problem**: Write a function `myReverse :: [a] -> [a]` that reverses a list of any type.
  - **Description**: For example, `myReverse [1, 2, 3] = [3, 2, 1]` and `myReverse "hello" = "olleh"`.
  - **Hint**: Use recursion and pattern matching. Consider accumulating the reversed list as you traverse.
### 5. Check if an Element is in a list
  - **Problem**: Write a function `isElement :: Eq a => a -> [a] -> Bool` that checks if a given element exists in a list.
  - **Description**: For example `isElement 3 [1, 2, 3, 4] = True` and `isElement 5 [1, 2, 3, 4] = False`.
  - **Hint**: Use recursion and the `Eq` typeclass for equality comparison. Handle empty and non-empty list cases.
## Intermediate Haskell Problems
### 1. Map Implementation
  - **Problem**: Write a function `myMap :: (a -> b) -> [a] -> [b]` that applies a given function to each element of a list, producing a new list.
  - **Description**: For example, `myMap (+1) [1, 2, 3] = [2, 3, 4]` and `myMap length ["hi", "hello"] = [2, 5]`.
  - **Hint**: Use recursion and pattern matching. The function parameter is applied to each element.
### 2. Filter Implementation
  - **Problem**: Write a function `myFilter :: (a -> Bool) -> [a] -> [a]` that keeps only the elements of a list that satisfy a given predicate.
  - **Description**: For example, `myFilter even [1, 2, 3, 4, 5] = [2, 4]`.
  - **Hint**: Recurse through the list, using the predicate to decide wether to include each element.
### 3. Zip Two Lists
  - **Problem**: Write a function `myZip :: [a] -> [b] -> [(a, b)]` that pairs elements from two lists into a list of tuples, stopping when either list runs out.
  - **Description**: For example, `myZip [1, 2, 3] ['a', 'b'] = [(1, 'a'), (2, 'b')]`.
  - **Hint**: Use pattern matching to handle cases where one or both lists are empty.
### 4. Quicksort
  - **Problem**: Write a function `quicksort :: Ord a => [a] -> [a]` that sorts a list using the quicksort algorithm.
  - **Description**: Choose a pivot (e.g., the first element), partition the list into elements less than and greater then or equal to the pivot, and recursivly sort the partitions.
  - **Hint**: Use list comprehensions for `filter` for partitioning. Conatonate the sorted sublists with the pivot in the middle.
### 5. Palindrome Check
  - **Problem**: Write a function `isPalindrome :: Eq a => [a] -> Bool` that checks if a list is a palindrome (reads the same forward and backward).
  - **Description**: For example, `isPalindrome [1, 2, 1] = True`, `isPalindrome "racecar" = True`, `isPalindrome [1, 2, 3] = False`.
  - **Hint**: Comapre the list to its reverse, or write a recursive solution that compares the first and last elements.
