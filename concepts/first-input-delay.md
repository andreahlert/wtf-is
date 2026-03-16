# WTF is First Input Delay (FID)?

A metric that measures the time between a user's first interaction (click, tap, key press) and when the browser can actually respond to it. High FID means the main thread is blocked by JavaScript, so the page feels unresponsive. Good FID is under 100ms. It has been replaced by INP (Interaction to Next Paint) as a Core Web Vital.

```
User clicks button
│
├── Main thread busy parsing JS... ──────┐
│                                        │
│   FID = time waiting here              │
│                                        │
└── Browser finally handles click ◄──────┘
```

**Examples:** [web-vitals](https://github.com/GoogleChrome/web-vitals), [Lighthouse](https://github.com/GoogleChrome/lighthouse), [PageSpeed Insights](https://pagespeed.web.dev)
