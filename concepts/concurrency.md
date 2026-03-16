# WTF is Concurrency?

Concurrency means dealing with multiple things at once by interleaving their execution. A single core can be concurrent by switching between tasks. It's about structure, not speed: your program is organized to handle multiple tasks, even if only one runs at any instant.

```
Single core, concurrent:

Task A:  ██░░██░░██
Task B:  ░░██░░██░░
         ─────────────► time
         (interleaved on one core)
```

**Examples:** [Go goroutines](https://github.com/golang/go), [Node.js](https://github.com/nodejs/node), [Python asyncio](https://github.com/python/cpython/tree/main/Lib/asyncio)
