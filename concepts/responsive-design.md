# WTF is Responsive Design?

Building web pages that adapt their layout to fit any screen size, from phones to ultrawide monitors. You use fluid grids, flexible images, and CSS media queries to rearrange content based on the viewport width. One codebase, every screen.

```
Desktop (1200px):          Tablet (768px):       Phone (375px):
┌────┬─────────┐          ┌────┬──────┐         ┌──────┐
│nav │ content  │          │nav │content│         │ nav  │
│    │         │          │    │      │         ├──────┤
│    │         │          └────┴──────┘         │content│
└────┴─────────┘                                └──────┘
```

**Examples:** [Bootstrap](https://github.com/twbs/bootstrap), [Tailwind CSS](https://github.com/tailwindlabs/tailwindcss), [Foundation](https://github.com/foundation/foundation-sites)
