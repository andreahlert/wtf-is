# WTF is Resize Observer?

A browser API that notifies you when an element's size changes. Unlike the `resize` event on `window`, it watches individual elements. Useful for responsive components that need to adapt based on their own container size, not just the viewport.

```
const observer = new ResizeObserver(entries => {
  for (const entry of entries) {
    console.log(entry.contentRect.width);
  }
});
observer.observe(document.querySelector('.panel'));

// .panel changes size (CSS, content, layout shift)
// → callback fires with new dimensions
```

**Examples:** [react-resize-detector](https://github.com/maslianok/react-resize-detector), [resize-observer-polyfill](https://github.com/que-etc/resize-observer-polyfill), [vue-resize](https://github.com/Akryum/vue-resize)
