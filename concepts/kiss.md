# WTF is KISS?

KISS stands for "Keep It Simple, Stupid." Choose the simplest solution that works. Clever, complex code is harder to read, debug, and maintain. If a junior dev can't understand it quickly, it's probably too complex.

```
// Over-engineered
class AbstractStrategyFactoryProviderManagerImpl<T> {
    ...100 lines of indirection...
}

// KISS
fn calculate_tax(price, rate):
    return price * rate
```

**Examples:** [Go standard library](https://github.com/golang/go), [SQLite](https://github.com/sqlite/sqlite), [Redis](https://github.com/redis/redis)
