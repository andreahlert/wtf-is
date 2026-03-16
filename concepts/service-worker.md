# WTF is Service Worker?

A JavaScript file that runs in the background, separate from your web page, acting as a proxy between the browser and the network. It intercepts network requests so you can cache responses, serve content offline, and handle push notifications. It cannot access the DOM directly.

```
Without Service Worker:
  Browser ──► Network ──► Server

With Service Worker:
  Browser ──► Service Worker ──► Cache (if available)
                    │
                    └──► Network (if not cached)
```

**Examples:** [Workbox](https://github.com/GoogleChrome/workbox), [next-pwa](https://github.com/shadowwalker/next-pwa), [Vite PWA](https://github.com/vite-pwa/vite-plugin-pwa)
