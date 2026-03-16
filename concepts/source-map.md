# WTF is Source Map?

A file that maps minified/bundled code back to your original source code. When you see an error in the browser console pointing to line 1 of a 500KB minified file, source maps let the debugger show you the exact line in your original, readable source file.

```
Your code:        Bundled:          Source map:

src/app.js:42     app.min.js:1      app.min.js:1:2847
  throw new         ...a.throw...     → src/app.js:42:5
  Error("oops")

Browser shows: Error at src/app.js:42 (not app.min.js:1)
```

**Examples:** [Vite](https://github.com/vitejs/vite), [webpack](https://github.com/webpack/webpack), [Sentry](https://github.com/getsentry/sentry)
