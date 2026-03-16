# WTF is Reactive Programming?

Reactive programming is a paradigm where you declare data flows and the system automatically propagates changes. Instead of pulling data, you subscribe to streams of events and react when new values arrive. Think spreadsheets: change a cell and formulas update automatically.

```
// Imperative: pull and check
while true:
    price = getPrice()
    if price < 50: buy()

// Reactive: subscribe and react
priceStream
    .filter(p => p < 50)
    .subscribe(p => buy(p))

// Events flow through a pipeline:
[click] → [debounce] → [map] → [filter] → [subscribe]
```

**Examples:** [RxJS](https://github.com/ReactiveX/rxjs), [Project Reactor](https://github.com/reactor/reactor-core), [RxJava](https://github.com/ReactiveX/RxJava)
