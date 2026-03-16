# WTF is Above the Fold?

The portion of a web page visible without scrolling. Content "above the fold" is what users see first, so it should load fast and contain the most important information. The term comes from newspapers, where the top half of the folded front page had to grab attention.

```
┌─────────────────────┐
│                     │  ← Above the fold
│  Hero, headline,    │     (visible immediately)
│  CTA button         │
│─────────────────────│  ← The "fold" (viewport edge)
│                     │
│  More content       │  ← Below the fold
│  (load lazily)      │     (requires scrolling)
└─────────────────────┘
```

**Examples:** [Critical](https://github.com/addyosmani/critical), [Critters](https://github.com/GoogleChromeLabs/critters), [Lighthouse](https://github.com/GoogleChrome/lighthouse)
