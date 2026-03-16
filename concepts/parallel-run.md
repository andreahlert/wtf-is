# WTF is Parallel Run?

Run the old and new implementation side by side with the same inputs and compare their outputs. The old system remains the source of truth while you verify the new one produces identical results. Catches discrepancies before you cut over.

```
  Request
     │
     ├──► Old system ──► response (returned to user)
     │         │
     └──► New system ──► result (compared, logged)
                │
           ┌────▼─────┐
           │ Compare  │
           │ old vs   │
           │ new      │
           │ match? ──│──► yes: confidence++
           │          │──► no:  investigate
           └──────────┘
```

**Examples:** [Scientist](https://github.com/github/scientist), [scientist.py](https://github.com/joealcorn/laboratory), [Diffy](https://github.com/twitter-archive/diffy)
