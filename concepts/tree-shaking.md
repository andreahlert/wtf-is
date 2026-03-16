# WTF is Tree Shaking?

A bundler optimization that removes unused code from your final bundle. If you import one function from a library, tree shaking strips out everything else you did not use. It relies on ES module static `import`/`export` syntax to determine what is actually referenced.

```
// You write:
import { debounce } from 'lodash-es';

// lodash-es has 300+ functions, but tree shaking keeps only:
// - debounce
// - its dependencies
// Everything else is dropped from the bundle.
```

**Examples:** [Rollup](https://github.com/rollup/rollup), [webpack](https://github.com/webpack/webpack), [esbuild](https://github.com/evanw/esbuild)
