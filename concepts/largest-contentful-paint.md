# WTF is Largest Contentful Paint (LCP)?

A metric that measures how long it takes for the largest visible content element (usually a hero image or heading) to finish rendering on screen. It tells you when the user perceives the page as "loaded." Good LCP is under 2.5 seconds.

```
Page load timeline:

0s ──────── 1s ──────── 2s ──────── 3s
│           │           │
├─ nav bar  ├─ text     ├─ hero image loaded
│           │           │
│           │           └─ LCP = 2.1s ✓ (good)
```

**Examples:** [web-vitals](https://github.com/GoogleChrome/web-vitals), [Lighthouse](https://github.com/GoogleChrome/lighthouse), [PageSpeed Insights](https://pagespeed.web.dev)
