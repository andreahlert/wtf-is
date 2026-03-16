# WTF is an Interpreter?

An interpreter executes your code line by line without compiling it to machine code first. It reads a statement, executes it, moves to the next. Fast to start, easy to debug, but generally slower than compiled code because it re-translates every time.

```
Compiled:     Source → Compiler → Binary → Run (fast)
Interpreted:  Source → Interpreter → Run (line by line)

Interpreter loop:
┌──────────────────────────────┐
│  1. Read next line            │
│  2. Parse it                  │
│  3. Execute it                │
│  4. Go to step 1              │
└──────────────────────────────┘
```

**Examples:** [CPython](https://github.com/python/cpython), [Ruby MRI](https://github.com/ruby/ruby), [Bash](https://www.gnu.org/software/bash/)
