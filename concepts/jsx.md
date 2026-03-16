# WTF is JSX?

A syntax extension for JavaScript that lets you write HTML-like markup inside JS files. It looks like HTML but it is actually JavaScript. A compiler transforms `<Button>Click</Button>` into function calls like `React.createElement('Button', null, 'Click')`.

```
// You write:
const el = <h1 className="title">Hello, {name}</h1>;

// Compiler transforms to:
const el = React.createElement('h1',
  { className: 'title' },
  'Hello, ', name
);
```

**Examples:** [React](https://github.com/facebook/react), [Preact](https://github.com/preactjs/preact), [SolidJS](https://github.com/solidjs/solid)
