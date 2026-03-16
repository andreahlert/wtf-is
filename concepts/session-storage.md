# WTF is Session Storage?

Same API as localStorage, but data only lasts for the duration of the browser tab. Close the tab, data is gone. Each tab gets its own isolated storage, so two tabs on the same site do not share sessionStorage data. Good for temporary state like form progress or wizard steps.

```
sessionStorage.setItem("step", "3");
sessionStorage.getItem("step");  // "3"

// ✓ survives page reload (same tab)
// ✗ gone when tab is closed
// ✗ not shared between tabs
// ✗ strings only
// ~5MB limit per origin
```

**Examples:** [store.js](https://github.com/marcuswestin/store.js), [localForage](https://github.com/localForage/localForage), [Web Storage MDN](https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage)
