# WTF is CSS-in-JS?

Writing CSS styles directly in your JavaScript files instead of in separate `.css` files. Styles are scoped to components automatically, so class name collisions are impossible. The CSS is generated at runtime or build time and injected into the page.

```
// Instead of a .css file:
const Button = styled.button`
  background: blue;
  color: white;
`;

// Renders as:
<button class="sc-a1b2c3">Click</button>
// with auto-generated unique class
```

**Examples:** [styled-components](https://github.com/styled-components/styled-components), [Emotion](https://github.com/emotion-js/emotion), [Stitches](https://github.com/stitchesjs/stitches)
