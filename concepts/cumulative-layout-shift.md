# WTF is Cumulative Layout Shift (CLS)?

A metric that measures how much the page layout shifts unexpectedly while loading. When an ad loads and pushes the article down, or a font swap changes text size, those are layout shifts. CLS sums them up. Good CLS is under 0.1. Users hate clicking a button only to have it move and clicking something else.

```
Before image loads:          After image loads:

┌──────────────┐             ┌──────────────┐
│ Buy Now      │ ← click     │ [  image  ]  │ ← shifted!
│              │             │ Buy Now      │
└──────────────┘             └──────────────┘

Fix: set width/height on images so space is reserved.
```

**Examples:** [web-vitals](https://github.com/GoogleChrome/web-vitals), [Lighthouse](https://github.com/GoogleChrome/lighthouse), [Layout Shift GIF Generator](https://defaced.dev/tools/layout-shift-gif-generator)
