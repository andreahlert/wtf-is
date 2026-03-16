# WTF is Partial Hydration?

A technique where only some components on a page get hydrated with JavaScript, while the rest stay as static HTML. Unlike full hydration where the entire page's JS runs on load, partial hydration lets you pick which parts need interactivity. This reduces the amount of JavaScript the browser has to process.

```
Full Hydration:        Partial Hydration:

┌─────────────┐        ┌─────────────┐
│ JS JS JS JS │        │ HTML   HTML │
│ JS JS JS JS │        │ ┌──┐  HTML │
│ JS JS JS JS │        │ │JS│  HTML │
│ JS JS JS JS │        │ └──┘  ┌──┐ │
└─────────────┘        │ HTML  │JS│ │
  (everything)         └───────└──┘─┘
                        (only what needs it)
```

**Examples:** [Astro](https://github.com/withastro/astro), [Qwik](https://github.com/QwikDev/qwik), [Marko](https://github.com/marko-js/marko)
