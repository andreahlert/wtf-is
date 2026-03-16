# WTF is Parallelism?

Parallelism means executing multiple things at the exact same time on multiple CPU cores. It's about raw throughput: splitting work across cores so it finishes faster.

```
Multi-core, parallel:

Core 1:  ████████████  Task A
Core 2:  ████████████  Task B
Core 3:  ████████████  Task C
Core 4:  ████████████  Task D
         ─────────────► time
         (truly simultaneous)
```

**Examples:** [Rayon (Rust)](https://github.com/rayon-rs/rayon), [Python multiprocessing](https://github.com/python/cpython), [Java parallel streams](https://github.com/openjdk/jdk)
