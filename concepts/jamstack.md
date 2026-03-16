# WTF is Jamstack?

A web architecture where pages are pre-rendered as static files, served from a CDN, and dynamic features are handled by APIs and JavaScript. The "JAM" stands for JavaScript, APIs, and Markup. There is no traditional server generating pages on each request.

```
Build:   Markdown/Data ──► Static Site Generator ──► HTML files

Deploy:  HTML files ──► CDN

Runtime: Browser ──► CDN (static HTML)
         Browser ──► APIs (dynamic data)
```

**Examples:** [Netlify](https://www.netlify.com), [Astro](https://github.com/withastro/astro), [Eleventy](https://github.com/11ty/eleventy)
