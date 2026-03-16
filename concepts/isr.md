# WTF is Incremental Static Regeneration?

A hybrid between static site generation and server-side rendering. Pages are statically generated at build time, but can be re-generated in the background after a configurable time interval. You get the speed of static files with the freshness of dynamic content, without rebuilding the entire site.

```
First request:  Serve cached static page
                └──► Background: regenerate page if stale

Next request:   Serve newly generated page
                └──► Background: regenerate again if stale
```

**Examples:** [Next.js](https://github.com/vercel/next.js), [Nuxt](https://github.com/nuxt/nuxt), [Vercel](https://vercel.com)
