# WTF is Redux?

A state management library where all app state lives in a single object (the store). To change state, you dispatch actions that describe what happened, and pure functions called reducers compute the new state. It makes state changes predictable and debuggable because every change goes through the same path.

```
Component dispatches action:  { type: "ADD_TODO", text: "Buy milk" }
        │
        ▼
Reducer: (oldState, action) => newState
        │
        ▼
Store updated ──► Components re-render
```

**Examples:** [Redux Toolkit](https://github.com/reduxjs/redux-toolkit), [Redux](https://github.com/reduxjs/redux), [React Redux](https://github.com/reduxjs/react-redux)
