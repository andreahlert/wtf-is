# WTF is Recursion?

Recursion is when a function calls itself to solve a smaller version of the same problem. Every recursive function needs a base case (when to stop) and a recursive case (how to break the problem down). Without a base case, you get infinite recursion and a stack overflow.

```
fn factorial(n):
    if n <= 1:        ← base case: stop here
        return 1
    return n * factorial(n - 1)   ← recursive case

factorial(4)
  4 * factorial(3)
    3 * factorial(2)
      2 * factorial(1)
        1              ← base case hit
      2 * 1 = 2
    3 * 2 = 6
  4 * 6 = 24
```

**Examples:** [LeetCode recursion](https://leetcode.com/tag/recursion/), [Haskell](https://github.com/ghc/ghc), [Visualgo](https://visualgo.net/)
