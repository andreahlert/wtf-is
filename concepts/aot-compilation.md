# WTF is AOT Compilation?

AOT (Ahead-Of-Time) compilation converts your entire program to native machine code before it runs. No interpreter, no JIT warmup. The binary starts fast and runs fast from the first instruction, but you lose runtime optimization and cross-platform flexibility.

```
         AOT                          JIT
Source ──► Machine Code ──► Run    Source ──► Bytecode ──► Interpret
                                                    │
    Fast startup ✓                             slow start
    No runtime compiler needed                 then compiles hot paths
    Platform-specific binary                   Platform-independent
```

**Examples:** [GraalVM Native Image](https://github.com/oracle/graal), [Go compiler](https://github.com/golang/go), [Rust/LLVM](https://github.com/rust-lang/rust)
