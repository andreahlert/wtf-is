# WTF is a Coroutine?

A coroutine is a function that can suspend its execution and yield control back to the caller, then resume where it left off later. Unlike threads, coroutines are cooperative: they decide when to pause, and they're much cheaper to create.

```
coroutine fetch_data():
    data = await http.get(url)    ← suspend, give up control
    parsed = parse(data)          ← resume when data arrives
    await db.save(parsed)         ← suspend again
    return "done"                 ← final return

// 1000s of coroutines on one thread:
// no OS thread overhead, no context switching cost
```

**Examples:** [Kotlin coroutines](https://github.com/Kotlin/kotlinx.coroutines), [Python asyncio](https://github.com/python/cpython/tree/main/Lib/asyncio), [Lua coroutines](https://github.com/lua/lua)
