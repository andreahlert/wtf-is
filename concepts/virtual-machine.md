# WTF is a Virtual Machine (Runtime)?

A runtime virtual machine is a program that executes bytecode. It's not a full OS emulator; it's a software CPU that runs your compiled bytecode, handles memory management, and provides a consistent environment across different operating systems.

```
Your Code
    │
    ▼
┌──────────────────────┐
│   Virtual Machine     │
│  ┌────────────────┐  │
│  │ Bytecode interp │  │
│  │ GC              │  │
│  │ JIT compiler    │  │
│  │ Thread scheduler│  │
│  └────────────────┘  │
└──────────┬───────────┘
           ▼
    Real CPU (x86, ARM)
```

**Examples:** [JVM](https://github.com/openjdk/jdk), [CPython VM](https://github.com/python/cpython), [Erlang BEAM](https://github.com/erlang/otp)
