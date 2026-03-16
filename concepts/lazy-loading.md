# WTF is Lazy Loading?

Loading resources only when they are needed, not upfront. Images below the fold load when you scroll to them. Components for a route load when you navigate to it. This reduces initial page load time by deferring work until the last moment.

```
Eager (default):             Lazy:

Page load:                   Page load:
├── image1.jpg  ✓            ├── image1.jpg  ✓ (visible)
├── image2.jpg  ✓            ├── image2.jpg  ✗ (below fold)
├── image3.jpg  ✓            ├── image3.jpg  ✗ (below fold)

                             User scrolls down:
                             ├── image2.jpg  ✓ (now visible)
```

**Examples:** [React.lazy](https://github.com/facebook/react), [vue-lazyload](https://github.com/hilongjw/vue-lazyload), [lozad.js](https://github.com/ApoorvSaxena/lozad.js)
