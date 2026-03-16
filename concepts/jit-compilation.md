# WTF is JIT Compilation?

JIT (Just-In-Time) compilation compiles code while the program is running, not before. The runtime profiles which code runs most ("hot paths") and compiles those to optimized machine code on the fly, giving you both startup flexibility and near-native speed.

```
Source → Bytecode → Interpreter (slow start, profiling)
                         │
                    hot path detected
                         │
                         ▼
                    JIT Compiler → Machine Code (fast)

// "warm up" period: first runs are slow
// after JIT kicks in: near-native speed
```

**Examples:** [V8 (Node/Chrome)](https://github.com/nicknisi/v8), [JVM HotSpot](https://github.com/openjdk/jdk), [LuaJIT](https://github.com/LuaJIT/LuaJIT)
