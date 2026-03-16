# WTF is Bundler?

A tool that takes all your JavaScript files, CSS, images, and other assets, resolves their imports, and combines them into optimized files (bundles) that browsers can load efficiently. It turns hundreds of source files into a handful of production-ready files.

```
Source:                      Bundle:

src/index.js ─────┐
src/utils.js ─────┤
src/api.js ───────┼──► Bundler ──► dist/app.js (one file)
src/styles.css ───┤              ──► dist/style.css
node_modules/ ────┘
```

**Examples:** [Vite](https://github.com/vitejs/vite), [webpack](https://github.com/webpack/webpack), [esbuild](https://github.com/evanw/esbuild)
