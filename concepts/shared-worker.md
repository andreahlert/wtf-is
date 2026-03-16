# WTF is Shared Worker?

A Web Worker that can be shared across multiple browser tabs, iframes, or windows of the same origin. Unlike a regular Web Worker (one per page), a Shared Worker runs once and all tabs connect to it via ports. Useful for sharing a WebSocket connection or syncing state across tabs.

```
Regular Worker:               Shared Worker:

Tab 1 ──► Worker 1            Tab 1 ──┐
Tab 2 ──► Worker 2            Tab 2 ──┤──► Shared Worker (one instance)
Tab 3 ──► Worker 3            Tab 3 ──┘

3 separate workers             1 worker, shared state
```

**Examples:** [SharedWorker MDN](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker), [BroadcastChannel API](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel), [Comlink](https://github.com/GoogleChromeLabs/comlink)
