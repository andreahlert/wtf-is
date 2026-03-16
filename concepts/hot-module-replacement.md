# WTF is Hot Module Replacement (HMR)?

A development feature where code changes show up in the browser instantly without a full page reload. You edit a component, save the file, and only that module is swapped in. App state, scroll position, and form inputs are preserved. It makes the feedback loop while developing extremely fast.

```
You edit Button.jsx and save:

Without HMR:                  With HMR:
Full page reload              Only Button module replaced
State lost                    State preserved
Scroll position reset         Scroll position kept
~2-5 seconds                  ~100ms
```

**Examples:** [Vite](https://github.com/vitejs/vite), [webpack](https://github.com/webpack/webpack), [Parcel](https://github.com/parcel-bundler/parcel)
