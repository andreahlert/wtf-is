# WTF is ETag?

An ETag (Entity Tag) is a hash or version identifier that the server attaches to a response. On the next request, the client sends it back in an `If-None-Match` header. If the resource hasn't changed, the server responds with 304 Not Modified (no body), saving bandwidth. It's a cache validation mechanism.

```
First request:
  Client: GET /api/data
  Server: 200 OK
          ETag: "abc123"
          {"users": [...]}

Second request:
  Client: GET /api/data
          If-None-Match: "abc123"

  If unchanged:
    Server: 304 Not Modified    (no body, save bandwidth)

  If changed:
    Server: 200 OK
            ETag: "def456"      (new ETag)
            {"users": [...]}    (new data)
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [Express.js](https://github.com/expressjs/express), [Varnish](https://github.com/varnishcache/varnish-cache)
