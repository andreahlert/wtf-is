# WTF is Reactivity?

A programming model where the UI automatically updates when data changes, without you manually telling the DOM what to update. You change a variable, and everything that depends on it re-renders. Different frameworks implement this differently: virtual DOM diffing, signals, proxies, or compile-time transforms.

```
Imperative (manual):          Reactive (automatic):

data.name = "Bob";            data.name = "Bob";
// now manually update DOM:   // UI updates automatically
el.textContent = data.name;   // framework handles it
```

**Examples:** [Vue](https://github.com/vuejs/core), [SolidJS](https://github.com/solidjs/solid), [Svelte](https://github.com/sveltejs/svelte)
