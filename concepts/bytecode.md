# WTF is Bytecode?

Bytecode is an intermediate representation between source code and machine code. The compiler translates your code into bytecode, then a virtual machine interprets (or JIT-compiles) it. This gives you "write once, run anywhere" portability.

```
Source Code (.java, .py)
        │
     Compiler
        │
        ▼
   Bytecode (.class, .pyc)     ← portable, platform-independent
        │
   Virtual Machine (JVM, CPython)
        │
        ▼
   Machine Code                 ← platform-specific
   (runs on actual CPU)
```

**Examples:** [JVM bytecode](https://github.com/openjdk/jdk), [Python .pyc files](https://github.com/python/cpython), [WebAssembly](https://github.com/WebAssembly/spec)
