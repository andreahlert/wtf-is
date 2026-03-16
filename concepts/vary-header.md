# WTF is Vary Header?

The Vary header tells caches that the response depends on certain request headers. If the server returns `Vary: Accept-Encoding`, the cache stores separate versions for `gzip`, `br`, and uncompressed. Without Vary, a cache might serve a gzip-compressed response to a client that can't decompress it.

```
Server response:
  Vary: Accept-Encoding, Accept-Language

Cache stores separate entries:

  /page + Accept-Encoding: gzip   → cached version A (gzip)
  /page + Accept-Encoding: br     → cached version B (brotli)
  /page + Accept-Language: en     → cached version C (English)
  /page + Accept-Language: pt-BR  → cached version D (Portuguese)

Without Vary:
  Client 1 (gzip) --> cache MISS --> server --> gzip response (cached)
  Client 2 (no gzip) --> cache HIT --> serves gzip --> BROKEN

With Vary: Accept-Encoding:
  Client 2 gets its own cached version --> works correctly
```

**Examples:** [Varnish](https://github.com/varnishcache/varnish-cache), [Fastly](https://www.fastly.com/), [NGINX](https://github.com/nginx/nginx)
