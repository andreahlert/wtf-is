# WTF is Local Storage?

A browser API that stores key-value pairs as strings, persisted across page reloads and browser restarts. It has a ~5MB limit per origin, is synchronous (blocks the main thread), and is shared across all tabs of the same origin. Good for small things like user preferences, bad for large or complex data.

```
localStorage.setItem("theme", "dark");
localStorage.getItem("theme");  // "dark"

// Persists until explicitly cleared:
// ✓ survives page reload
// ✓ survives browser restart
// ✗ not shared across browsers
// ✗ strings only (must JSON.stringify objects)
```

**Examples:** [localForage](https://github.com/localForage/localForage), [store.js](https://github.com/marcuswestin/store.js), [idb-keyval](https://github.com/jakearchibald/idb-keyval)
