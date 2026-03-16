# WTF is SPA (Single Page Application)?

A web app that loads a single HTML page and dynamically rewrites its content as the user interacts, instead of loading entirely new pages from the server. Navigation feels instant because only data is fetched, not full HTML documents. The browser handles all routing and rendering via JavaScript.

```
Traditional Site:            SPA:

Page A ──► Server ──► Page B   Page ──► API ──► Update DOM
  (full reload)                  (no reload, JS swaps content)
```

**Examples:** [React](https://github.com/facebook/react), [Vue](https://github.com/vuejs/core), [Angular](https://github.com/angular/angular)
