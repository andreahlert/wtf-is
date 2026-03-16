# WTF is Flux Pattern?

A data flow architecture where data moves in one direction: actions describe what happened, a dispatcher routes them to stores, stores update their state, and views re-render. It was created by Facebook to make state changes predictable. Redux is the most famous implementation.

```
Action ──► Dispatcher ──► Store ──► View
  ▲                                  │
  └──────────────────────────────────┘
           (user interaction)

Data always flows one way. Never backwards.
```

**Examples:** [Redux](https://github.com/reduxjs/redux), [Zustand](https://github.com/pmndrs/zustand), [Reflux](https://github.com/reflux/refluxjs)
