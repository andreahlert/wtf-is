# WTF are CSS Modules?

CSS files where every class name is locally scoped to the component that imports it. You write normal CSS, but the build tool renames classes to unique identifiers so they never collide with styles from other components. No runtime cost, just regular CSS with automatic scoping.

```
/* button.module.css */
.primary { background: blue; }

// Button.jsx
import styles from './button.module.css';
<button className={styles.primary}>

// Output:
<button class="button_primary_a1b2c">
```

**Examples:** [Vite](https://github.com/vitejs/vite), [Next.js](https://github.com/vercel/next.js), [Create React App](https://github.com/facebook/create-react-app)
