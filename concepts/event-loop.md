# WTF is an Event Loop?

The event loop is a single-threaded loop that picks up tasks from a queue and executes them one at a time. When async work (I/O, timers) completes, its callback gets added to the queue. This is how Node.js and browsers handle concurrency without threads.

```
┌──────────────────────────┐
│       Call Stack          │ ← runs one thing at a time
└────────────┬─────────────┘
             │ empty?
             ▼
┌──────────────────────────┐
│     Microtask Queue       │ ← promises, queueMicrotask
└────────────┬─────────────┘
             │ empty?
             ▼
┌──────────────────────────┐
│      Task Queue           │ ← setTimeout, I/O callbacks
└──────────────────────────┘
         ↻ repeat forever
```

**Examples:** [Node.js](https://github.com/nodejs/node), [libuv](https://github.com/libuv/libuv), [Tokio (Rust)](https://github.com/tokio-rs/tokio)
