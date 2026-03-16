# WTF are Custom Elements?

A browser API that lets you define your own HTML tags with custom behavior. You write a JavaScript class, register it with a tag name, and then use it in HTML like any built-in element. The name must contain a hyphen to avoid conflicts with future HTML tags.

```
class MyAlert extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `<p>Alert!</p>`;
  }
}
customElements.define('my-alert', MyAlert);

<!-- Now use it anywhere: -->
<my-alert></my-alert>
```

**Examples:** [Lit](https://github.com/lit/lit), [Stencil](https://github.com/ionic-team/stencil), [Haunted](https://github.com/matthewp/haunted)
