# Elixir Enum.each and throw Unexpected Behavior

This repository demonstrates an uncommon issue when using `throw` within Elixir's `Enum.each`.  The `throw` statement unexpectedly terminates the iteration, which is not always intuitive for developers familiar with other languages. This example highlights the behavior and provides a solution for achieving intended results.

## Bug

The `bug.exs` file contains code that iterates through a list. When the number `3` is encountered, the `throw` function halts the iteration.  This might not be the expected behavior for those accustomed to exception handling in other programming languages, where `throw` usually leads to exiting out of a function. Instead it stops the iteration immediately. 

## Solution

The `bugSolution.exs` file offers an alternative approach using `Enum.reduce` or a `try-catch` block within a `for` loop. These methods enable processing of remaining elements after a `throw` or gracefully handling an exception.
