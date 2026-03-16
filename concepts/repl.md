# WTF is a REPL?

REPL stands for Read-Eval-Print Loop. It's an interactive environment where you type an expression, it evaluates it, prints the result, and waits for more input. Great for experimenting, debugging, and learning a language.

```
$ python3
>>> 2 + 2          ← Read
4                   ← Eval + Print
>>> [x*2 for x in range(5)]
[0, 2, 4, 6, 8]
>>> exit()

┌──────┐
│ Read  │ ← type expression
│ Eval  │ ← execute it
│ Print │ ← show result
│ Loop  │ ← wait for next input
└──────┘
```

**Examples:** [Node.js REPL](https://github.com/nodejs/node), [IPython](https://github.com/ipython/ipython), [irb (Ruby)](https://github.com/ruby/irb)
