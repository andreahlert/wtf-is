# WTF is Decorator Pattern?

Wrap an object with another object that adds behavior, without changing the original. You can stack decorators like layers. A logging decorator wraps a service, adding logs before and after each call, while the service itself stays unchanged.

```
  ┌─── LoggingDecorator ─────────────┐
  │  log("start")                    │
  │  ┌─── CachingDecorator ───────┐  │
  │  │  if cached → return        │  │
  │  │  ┌─── Actual Service ───┐  │  │
  │  │  │  doWork()            │  │  │
  │  │  └──────────────────────┘  │  │
  │  │  cache result              │  │
  │  └────────────────────────────┘  │
  │  log("end")                      │
  └──────────────────────────────────┘
```

**Examples:** [Python functools.wraps](https://docs.python.org/3/library/functools.html), [TypeScript decorators](https://github.com/tc39/proposal-decorators), [Java I/O streams](https://docs.oracle.com/javase/8/docs/api/java/io/package-summary.html)
