# WTF is a Red-Black Tree?

A red-black tree is a self-balancing binary search tree where each node is colored red or black. The coloring rules guarantee that no path from root to leaf is more than twice as long as any other, keeping the tree roughly balanced. This ensures O(log N) time for search, insert, and delete operations.

```
          11(B)
         /     \
       2(R)    14(B)
      /   \       \
    1(B)  7(B)   15(R)
         /   \
       5(R)  8(R)

  Rules:
  1. Root is black
  2. Red nodes have black children
  3. All paths to leaves have same # of black nodes
```

**Examples:** [Java TreeMap](https://github.com/openjdk/jdk), [C++ std::map](https://gcc.gnu.org/), [Linux CFS Scheduler](https://github.com/torvalds/linux)
