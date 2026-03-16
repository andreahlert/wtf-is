# WTF is TypeScript?

JavaScript with static types. You annotate variables, function parameters, and return values with types, and a compiler checks them before your code runs. It catches bugs like passing a string where a number is expected, without changing how JS works at runtime. TypeScript compiles down to plain JavaScript.

```
// JavaScript:
function add(a, b) { return a + b; }
add("1", 2)  // "12" (oops, string concat)

// TypeScript:
function add(a: number, b: number): number { return a + b; }
add("1", 2)  // Compile error!
```

**Examples:** [TypeScript](https://github.com/microsoft/TypeScript), [ts-node](https://github.com/TypeStrong/ts-node), [tsx](https://github.com/privatenumber/tsx)
