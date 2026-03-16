# WTF is a Thread?

A thread is the smallest unit of execution the OS can schedule. Multiple threads within a process share the same memory space, which makes communication fast but requires careful synchronization to avoid data corruption.

```
Process
┌──────────────────────────────┐
│  Shared Memory (heap)         │
│  ┌────────┐ ┌────────┐       │
│  │Thread 1│ │Thread 2│       │
│  │ stack  │ │ stack  │       │
│  └────────┘ └────────┘       │
│       │           │           │
│       └─── read/write ───┘   │
│            same heap          │
└──────────────────────────────┘
```

**Examples:** [Java threads](https://github.com/openjdk/jdk), [pthreads (C)](https://man7.org/linux/man-pages/man7/pthreads.7.html), [Rust std::thread](https://doc.rust-lang.org/std/thread/)
