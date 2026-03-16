# WTF is Minification?

Removing all unnecessary characters from code (whitespace, comments, long variable names) without changing its behavior, to make files smaller. Smaller files mean faster downloads. A 100KB file might become 30KB after minification.

```
Before:
  function calculateTotal(items) {
    // sum all prices
    return items.reduce((sum, item) => sum + item.price, 0);
  }

After:
  function c(t){return t.reduce((s,i)=>s+i.price,0)}
```

**Examples:** [Terser](https://github.com/terser/terser), [esbuild](https://github.com/evanw/esbuild), [SWC](https://github.com/swc-project/swc)
