# WTF is Islands Architecture?

A rendering pattern where most of the page is static HTML, and only specific interactive sections ("islands") get hydrated with JavaScript. Instead of hydrating the entire page, you only ship JS for the parts that need it. The rest stays as plain HTML.

```
┌──────────────────────────────────┐
│  Static HTML (no JS)             │
│  ┌──────────┐   ┌──────────┐    │
│  │ Interactive│   │ Interactive│   │
│  │  Island   │   │  Island   │   │
│  │  (has JS) │   │  (has JS) │   │
│  └──────────┘   └──────────┘    │
│  Static HTML (no JS)             │
└──────────────────────────────────┘
```

**Examples:** [Astro](https://github.com/withastro/astro), [Fresh](https://github.com/denoland/fresh), [Marko](https://github.com/marko-js/marko)
