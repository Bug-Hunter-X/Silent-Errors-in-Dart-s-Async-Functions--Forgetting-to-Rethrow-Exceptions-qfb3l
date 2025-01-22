# Silent Errors in Dart's Async Functions

This repository demonstrates a common error in Dart's asynchronous programming: forgetting to rethrow exceptions in `catch` blocks within `async` functions.  This can lead to silent failures that are hard to debug.

The `bug.dart` file shows the erroneous code, while `bugSolution.dart` provides the corrected version.

## Problem

The `fetchData` function in `bug.dart` uses `http` to fetch data.  While it includes error handling, it omits rethrowing the exception in the `catch` block.  This means that errors during the API call won't propagate, leading to unexpected behavior.

## Solution

The `bugSolution.dart` file demonstrates the correct approach.  The `catch` block now includes `rethrow` to propagate the exception up the call stack, allowing proper handling at a higher level.