# WTF is Utility-First CSS?

A CSS approach where you style elements by composing small, single-purpose classes directly in your HTML instead of writing custom CSS. Each class does one thing: `text-center` centers text, `p-4` adds padding, `bg-blue-500` sets a background color.

```
Traditional CSS:               Utility-First:

.card {                        <div class="p-4 rounded
  padding: 1rem;                 shadow bg-white
  border-radius: 8px;            text-gray-800">
  box-shadow: 0 2px 4px;
  background: white;
  color: #333;
}
<div class="card">
```

**Examples:** [Tailwind CSS](https://github.com/tailwindlabs/tailwindcss), [UnoCSS](https://github.com/unocss/unocss), [Tachyons](https://github.com/tachyons-css/tachyons)
