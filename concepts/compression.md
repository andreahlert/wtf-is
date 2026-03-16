# WTF is HTTP Compression?

HTTP compression reduces the size of responses by compressing them before sending. The client tells the server which compression algorithms it supports via `Accept-Encoding`, and the server picks one. This typically cuts text-based responses (HTML, CSS, JS, JSON) by 60-80%. Common algorithms are gzip, deflate, and brotli.

```
Without compression:
  Server --> 100 KB HTML --> Client

With compression:
  Client: Accept-Encoding: gzip, br
  Server: Content-Encoding: gzip
  Server --> 25 KB (compressed) --> Client --> decompresses --> 100 KB

Algorithm comparison for typical web content:
  ┌──────────┬─────────┬───────────┐
  │ Algorithm│ Ratio   │ Speed     │
  ├──────────┼─────────┼───────────┤
  │ gzip     │ ~70%    │ fast      │
  │ brotli   │ ~75-80% │ slower    │
  │ zstd     │ ~75%    │ fast      │
  └──────────┴─────────┴───────────┘

Don't compress images/video (already compressed).
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [shrink-ray](https://github.com/aickin/shrink-ray), [compression (Express)](https://github.com/expressjs/compression)
