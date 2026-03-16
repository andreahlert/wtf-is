# WTF is Virtual DOM?

A lightweight JavaScript copy of the real DOM. When your app state changes, the framework updates the virtual DOM first, compares it with the previous version to find what changed, then applies only those changes to the real DOM. This avoids expensive full-page re-renders.

```
State change
    │
    ▼
New Virtual DOM  ──► Diff with old Virtual DOM
                          │
                     Only changed parts
                          │
                          ▼
                     Update real DOM
```

**Examples:** [React](https://github.com/facebook/react), [Vue](https://github.com/vuejs/core), [Preact](https://github.com/preactjs/preact)
