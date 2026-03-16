# WTF is Shadow DOM?

A browser feature that lets you attach a hidden, encapsulated DOM tree to an element. Styles and scripts inside a shadow DOM don't leak out, and outside styles don't leak in. It is how browsers have always built complex built-in elements like `<video>` and `<input type="range">`.

```
Regular DOM:
┌──────────────────────┐
│ <div>                │  ← styles affect everything
│   <p>Hello</p>       │
│ </div>               │
└──────────────────────┘

Shadow DOM:
┌──────────────────────┐
│ <my-widget>          │
│   #shadow-root       │  ← isolated scope
│     <style>...</style>│  ← only applies inside
│     <p>Hello</p>     │
└──────────────────────┘
```

**Examples:** [Lit](https://github.com/lit/lit), [Shoelace](https://github.com/shoelace-style/shoelace), [Stencil](https://github.com/ionic-team/stencil)
