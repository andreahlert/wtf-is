# WTF is Cache Invalidation?

Deciding when cached data is stale and needs to be removed or refreshed. It's famously one of the two hard things in computer science. Get it wrong and users see stale data. Common strategies: time-based expiry (TTL), event-based invalidation, or versioned keys.

```
  Strategies:

  TTL (Time To Live):
  set("user:1", data, ttl=60s)  → auto-expires

  Event-based:
  on user_updated → delete("user:1")

  Version keys:
  "user:1:v3" → bump version on change,
                 old key just expires

  The hard part: knowing WHEN data changed
```

**Examples:** [Redis](https://github.com/redis/redis), [Varnish](https://github.com/varnishcache/varnish-cache), [CDN Invalidation (CloudFront)](https://aws.amazon.com/cloudfront/)
