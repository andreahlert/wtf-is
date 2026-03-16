# WTF is Cache API?

A browser API for storing HTTP request/response pairs, primarily used by Service Workers to cache assets for offline access. Unlike browser cache (which you cannot control), the Cache API gives you full programmatic control over what gets cached, when it expires, and how it is served.

```
// In a Service Worker:
caches.open('v1').then(cache => {
  cache.addAll(['/index.html', '/style.css', '/app.js']);
});

// Later, serve from cache:
fetch event ──► check cache ──► found? serve it
                     │
                     └──► not found? fetch from network
```

**Examples:** [Workbox](https://github.com/GoogleChrome/workbox), [Vite PWA](https://github.com/vite-pwa/vite-plugin-pwa), [Cache API MDN](https://developer.mozilla.org/en-US/docs/Web/API/Cache)
