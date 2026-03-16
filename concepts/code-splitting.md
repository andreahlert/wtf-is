# WTF is Code Splitting?

Breaking your application bundle into smaller chunks that are loaded on demand instead of all at once. The user downloads only the code needed for the current page. Other chunks load when the user navigates to different parts of the app.

```
Without splitting:            With splitting:

app.js (2MB) ──► all at once  main.js (200KB) ──► loads first
                              dashboard.js (400KB) ──► on navigate
                              settings.js (300KB) ──► on navigate
```

**Examples:** [webpack](https://github.com/webpack/webpack), [Vite](https://github.com/vitejs/vite), [Next.js](https://github.com/vercel/next.js)
