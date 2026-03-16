# WTF is Critical Rendering Path?

The sequence of steps the browser takes to convert HTML, CSS, and JavaScript into pixels on screen. Optimizing it means reducing the amount of work the browser must do before it can show the first meaningful content. Render-blocking CSS and JS in the `<head>` slow it down.

```
HTML ──► DOM tree
              │
CSS ──► CSSOM ├──► Render Tree ──► Layout ──► Paint ──► Pixels
              │
JS ──► can block both DOM and CSSOM construction
```

**Examples:** [Lighthouse](https://github.com/GoogleChrome/lighthouse), [Critical](https://github.com/addyosmani/critical), [Critters](https://github.com/GoogleChromeLabs/critters)
