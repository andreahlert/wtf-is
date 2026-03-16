# WTF is Infinite Scroll?

A pattern where new content loads automatically as the user scrolls near the bottom of the page, instead of using pagination buttons. Social media feeds use this extensively. It keeps users engaged but can hurt accessibility and makes it hard to reach the footer.

```
┌────────────────┐
│ Item 1         │
│ Item 2         │
│ Item 3         │
│ Item 4         │ ← user scrolls here
│ ...loading...  │ ← detect, fetch next page
│ Item 5         │
│ Item 6         │ ← new items appear
└────────────────┘
```

**Examples:** [react-infinite-scroll-component](https://github.com/ankeetmaini/react-infinite-scroll-component), [vue-infinite-loading](https://github.com/PeachScript/vue-infinite-loading), [TanStack Virtual](https://github.com/TanStack/virtual)
