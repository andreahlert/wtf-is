# WTF is Big O Notation?

Big O describes how an algorithm's time or space grows as the input size grows. It ignores constants and focuses on the dominant term. O(n) means the work scales linearly with input size. O(n^2) means it scales with the square.

```
O(1)       constant    hash lookup         ─────────
O(log n)   logarithmic binary search        ──╱──────
O(n)       linear      loop through list       ╱
O(n log n) linearithmic merge sort           ╱
O(n^2)     quadratic   nested loops        ╱
                                          ╱
  Time                                  ╱  O(n^2)
   ▲            O(n) ╱               ╱
   │              ╱    O(n log n) ╱
   │      ╱─────────────────────
   │ O(log n)
   │ O(1)────────────────────
   └──────────────────────────► n
```

**Examples:** [Big-O Cheat Sheet](https://www.bigocheatsheet.com/), [LeetCode](https://leetcode.com/), [Algorithm Visualizer](https://github.com/algorithm-visualizer/algorithm-visualizer)
