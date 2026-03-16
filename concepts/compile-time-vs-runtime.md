# WTF is Compile Time vs Runtime?

Compile time is when your source code is translated into machine code (before execution). Runtime is when the compiled program is actually running. Errors caught at compile time are free; errors at runtime crash your users.

```
Source Code  ──► Compiler ──► Binary ──► Running Program

 COMPILE TIME                  RUNTIME
 ─────────────                 ───────────────
 type errors                   null pointers
 syntax errors                 out of memory
 missing imports               network failures
 borrow checker (Rust)         division by zero

 Cost: $0 (dev sees it)       Cost: $$$ (user sees it)
```

**Examples:** [Rust (strong compile-time)](https://github.com/rust-lang/rust), [TypeScript](https://github.com/microsoft/TypeScript), [Go](https://github.com/golang/go)
