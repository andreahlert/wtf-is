# WTF is UI Virtualization?

A technique for rendering large lists efficiently by only creating DOM elements for items currently visible in the viewport. If you have 10,000 rows but only 20 fit on screen, only those 20 exist in the DOM. As you scroll, old items are recycled for new ones.

```
Full list (10,000 items):     Virtualized:

DOM has 10,000 <div>s         DOM has ~20 <div>s
  (slow, eats memory)           (fast, constant memory)

┌────────────────┐            ┌────────────────┐
│ [not visible]  │ rendered   │ [not visible]  │ not in DOM
│ Item 50       │ rendered   │ Item 50       │ ← rendered
│ Item 51       │ rendered   │ Item 51       │ ← rendered
│ [not visible]  │ rendered   │ [not visible]  │ not in DOM
└────────────────┘            └────────────────┘
```

**Examples:** [TanStack Virtual](https://github.com/TanStack/virtual), [react-window](https://github.com/bvaughn/react-window), [vue-virtual-scroller](https://github.com/Akryum/vue-virtual-scroller)
