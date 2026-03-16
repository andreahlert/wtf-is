# WTF are Signals?

A reactive primitive that holds a value and automatically notifies anything that depends on it when the value changes. Unlike state in React that re-renders whole components, signals trigger fine-grained updates only where the value is actually used. They are becoming the preferred reactivity model in many frameworks.

```
const count = signal(0);

// Only this specific text node updates:
<p>{count.value}</p>

count.value = 1;  // triggers update to that <p>, nothing else
```

**Examples:** [Preact Signals](https://github.com/preactjs/signals), [SolidJS](https://github.com/solidjs/solid), [Angular Signals](https://github.com/angular/angular)
