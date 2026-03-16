# WTF is a Side Effect?

A side effect is anything a function does besides returning a value. Writing to a database, printing to the console, modifying a global variable, making an HTTP request: all side effects. They make code harder to test and reason about.

```
fn process_order(order):
    total = order.price * order.qty     // pure computation
    db.save(order)                      // side effect: writes DB
    email.send(order.user)              // side effect: sends email
    log("processed")                    // side effect: writes stdout
    analytics.track("order")            // side effect: HTTP call
    return total                        // the actual return value
```

**Examples:** [Effect-TS](https://github.com/Effect-TS/effect), [Haskell IO Monad](https://github.com/ghc/ghc), [Redux middleware](https://github.com/reduxjs/redux)
