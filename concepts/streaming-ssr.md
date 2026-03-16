# WTF is Streaming SSR?

Instead of waiting for the entire page to render on the server before sending anything, the server streams HTML chunks to the browser as they become ready. The user sees content appearing progressively. Slow parts of the page don't block fast parts from showing up.

```
Traditional SSR:
  Server: [render everything......] ──► Send all HTML at once

Streaming SSR:
  Server: [header ready] ──► send ──► browser shows header
          [main ready]   ──► send ──► browser shows main
          [sidebar ready]──► send ──► browser shows sidebar
```

**Examples:** [Next.js](https://github.com/vercel/next.js), [Remix](https://github.com/remix-run/remix), [React](https://github.com/facebook/react)
