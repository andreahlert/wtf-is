# WTF is Polyfill?

A piece of code that implements a modern browser feature in older browsers that do not support it natively. If a browser does not have `Array.prototype.flat()`, a polyfill adds it. Once all target browsers support the feature, you can remove the polyfill.

```
Modern browser:
  [1, [2, 3]].flat()  → [1, 2, 3]  ✓ built-in

Old browser (no .flat):
  [1, [2, 3]].flat()  → TypeError!

Old browser + polyfill:
  // polyfill adds Array.prototype.flat
  [1, [2, 3]].flat()  → [1, 2, 3]  ✓ works now
```

**Examples:** [core-js](https://github.com/zloirock/core-js), [polyfill.io](https://polyfill.io), [es-shims](https://github.com/es-shims)
