# WTF is Web Worker?

A way to run JavaScript in a background thread, separate from the main thread that handles the UI. Heavy computations in a Web Worker do not block scrolling, animations, or button clicks. Workers communicate with the main thread via message passing and cannot access the DOM directly.

```
Main thread (UI):              Web Worker (background):

Handles clicks, rendering      Handles heavy computation
        │                              │
        ├── postMessage(data) ────────►│
        │                              ├── crunch numbers...
        │◄──── postMessage(result) ────┤
        │                              │
UI stays responsive              No DOM access
```

**Examples:** [Comlink](https://github.com/GoogleChromeLabs/comlink), [workerpool](https://github.com/josdejong/workerpool), [Partytown](https://github.com/BuilderIO/partytown)
