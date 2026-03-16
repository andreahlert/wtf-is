# WTF is Accessibility (a11y)?

Building websites that everyone can use, including people who are blind, deaf, have motor impairments, or use assistive technologies like screen readers. It means using semantic HTML, proper contrast, keyboard navigation, and ARIA attributes. The "11" in "a11y" is the number of letters between "a" and "y."

```
Inaccessible:                 Accessible:

<div onclick="submit()">      <button onclick="submit()">
  Submit                        Submit
</div>                        </button>

Screen reader: "div"          Screen reader: "Submit, button"
Keyboard: can't focus         Keyboard: Tab to focus, Enter to click
```

**Examples:** [axe-core](https://github.com/dequelabs/axe-core), [pa11y](https://github.com/pa11y/pa11y), [Lighthouse](https://github.com/GoogleChrome/lighthouse)
