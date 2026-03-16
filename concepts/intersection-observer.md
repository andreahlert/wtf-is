# WTF is Intersection Observer?

A browser API that tells you when an element enters or leaves the viewport (or another element). Instead of listening to scroll events and calculating positions manually, you register a callback and the browser efficiently notifies you. Commonly used for lazy loading images and infinite scroll.

```
const observer = new IntersectionObserver(entries => {
  entries.forEach(e => {
    if (e.isIntersecting) loadImage(e.target);
  });
});
observer.observe(document.querySelector('img'));

Viewport:
┌─────────────────┐
│  visible content │
│                  │
├──────────────────┤ ← intersection boundary
│  <img> enters    │ ← callback fires
└──────────────────┘
```

**Examples:** [lozad.js](https://github.com/ApoorvSaxena/lozad.js), [react-intersection-observer](https://github.com/thebuilder/react-intersection-observer), [vanilla-lazyload](https://github.com/verlok/vanilla-lazyload)
