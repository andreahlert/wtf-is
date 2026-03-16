# WTF is Static Site Generation?

HTML pages are pre-built at build time, not on each request. You run a build command, it generates all the HTML files, and you deploy them to a CDN. Pages load extremely fast because there is no server processing per request.

```
Build time:
  Data + Templates ──► Build ──► /index.html
                               ──► /about.html
                               ──► /blog/post-1.html
Deploy:
  All HTML files ──► CDN ──► User gets pre-built HTML
```

**Examples:** [Hugo](https://github.com/gohugoio/hugo), [Eleventy](https://github.com/11ty/eleventy), [Gatsby](https://github.com/gatsbyjs/gatsby)
