# Dart Asynchronous Error Handling

This example demonstrates best practices for handling errors in asynchronous Dart code.  It includes a `fetchData` function that makes a network request and a `main` function that handles exceptions.

## Problem:

Network requests can fail due to various reasons (network issues, server errors, etc.).  Improper error handling can lead to application crashes or unexpected behavior.

## Solution:

This code uses a `try-catch` block to gracefully handle potential exceptions. The `rethrow` keyword allows higher levels of the application to handle the error if needed.  This allows for more centralized error management.

## How to run the code:
1. Ensure you have Dart SDK installed.
2. Save the code as `bug.dart` and `bugSolution.dart`.
3. Run from the command line using `dart bug.dart`