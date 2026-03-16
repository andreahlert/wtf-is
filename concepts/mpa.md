# WTF is MPA (Multi-Page Application)?

A web app where every navigation triggers a full page load from the server. Each URL returns a complete HTML document. This is the original model of the web, and it still works great for content-heavy sites where SEO and simplicity matter more than flashy transitions.

```
Click link ──► Browser requests /about ──► Server returns full HTML
Click link ──► Browser requests /contact ──► Server returns full HTML
```

**Examples:** [Astro](https://github.com/withastro/astro), [Rails](https://github.com/rails/rails), [Django](https://github.com/django/django)
