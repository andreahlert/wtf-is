# WTF is Garbage Collection?

Garbage collection is automatic memory management. The runtime periodically finds objects your code no longer references and frees that memory for you, so you don't have to manually allocate and deallocate.

```
Your Code          Heap Memory
─────────          ───────────
obj_a ──────────►  [  Object A  ]  ← still reachable, kept
obj_b ──────────►  [  Object B  ]  ← still reachable, kept
  (nothing) ───X   [  Object C  ]  ← unreachable, collected!
```

**Examples:** [Go GC](https://tip.golang.org/doc/gc-guide), [Java ZGC](https://github.com/openjdk/zgc), [.NET GC](https://learn.microsoft.com/en-us/dotnet/standard/garbage-collection/)
