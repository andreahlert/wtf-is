# WTF is Hydration?

The process where the browser takes server-rendered HTML and attaches JavaScript event handlers to it, making the static page interactive. The server sends you a fully rendered page so you see content fast, then JavaScript "hydrates" it so buttons, forms, and interactions actually work.

```
Server HTML (static) ──► Browser displays it immediately
                         │
JS bundle loads ─────────┘
                         │
Hydration: attach event listeners to existing DOM
                         │
Page is now interactive ◄┘
```

**Examples:** [React](https://github.com/facebook/react), [Next.js](https://github.com/vercel/next.js), [Solid](https://github.com/solidjs/solid)
