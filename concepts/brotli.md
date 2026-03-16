# WTF is Brotli?

Brotli is a compression algorithm developed by Google that achieves better compression ratios than gzip for web content. It uses a built-in dictionary of common web strings (HTML tags, CSS properties, JS keywords), which helps it compress small files more efficiently. All modern browsers support it, and it's the preferred compression for static assets.

```
Compression comparison (typical HTML file):

  Original:  100 KB
  gzip:       30 KB  (70% reduction)
  brotli:     22 KB  (78% reduction)

  Accept-Encoding: br, gzip
  Content-Encoding: br

Brotli has 11 quality levels (0-11):
  Level 1-4:  fast, similar to gzip
  Level 5-9:  good balance
  Level 10-11: slow, best compression (use for static files)

Best practice:
  Static files:  pre-compress with brotli level 11
  Dynamic:       use gzip or brotli level 4 (faster)
```

**Examples:** [brotli](https://github.com/google/brotli), [NGINX brotli module](https://github.com/google/ngx_brotli), [brotli-webpack-plugin](https://github.com/nicedreams/brotli-webpack-plugin)
