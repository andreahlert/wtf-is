# WTF is State Management?

How you store, update, and share data across components in a frontend app. "State" is any data that can change: user info, form inputs, API responses, UI toggles. State management becomes a problem when multiple components need the same data and passing it through props gets unwieldy.

```
Without state management:     With state management:

     A (state)                     Store (state)
    / \                           / | \
   B   C  (pass via props)      A  B  C  (all read from store)
  /
 D  (prop drilling)             D  (reads directly from store)
```

**Examples:** [Redux](https://github.com/reduxjs/redux), [Zustand](https://github.com/pmndrs/zustand), [Jotai](https://github.com/pmndrs/jotai)
