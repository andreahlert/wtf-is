# WTF is Eager Evaluation?

Eager evaluation computes values immediately when they're defined, not when they're used. Most languages default to this: every expression is evaluated as soon as it's encountered, whether you end up needing the result or not.

```
// Eager: both branches are computed before the if
a = expensive_calc_1()     // runs immediately
b = expensive_calc_2()     // runs immediately
result = a if condition else b   // one was wasted

// Timeline
t=0  compute a  ████░░░░
t=1  compute b  ░░░░████
t=2  pick one   ░░░░░░░█

// vs Lazy: only the needed branch runs
```

**Examples:** [Python lists](https://github.com/python/cpython), [JavaScript](https://github.com/nicolo-ribaudo/tc39-proposal-eager-evaluation), [Java Streams (eager collect)](https://github.com/openjdk/jdk)
