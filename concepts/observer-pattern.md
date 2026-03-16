# WTF is Observer Pattern?

An object (the subject) maintains a list of dependents (observers) and notifies them automatically when its state changes. The subject doesn't need to know what the observers do with the information. It's the foundation of most event systems.

```
  Subject                Observers
  ┌──────────┐    notify  ┌──────────┐
  │  Stock   │───────────►│ Chart    │
  │  Price   │───────────►│ Alert    │
  │          │───────────►│ Logger   │
  │ state=42 │            └──────────┘
  └──────────┘
   on change → notify all registered observers
```

**Examples:** [RxJS](https://github.com/ReactiveX/rxjs), [EventEmitter3](https://github.com/primus/eventemitter3), [Vue Reactivity](https://github.com/vuejs/core)
