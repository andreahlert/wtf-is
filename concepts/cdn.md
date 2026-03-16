# WTF is a CDN?

A network of servers spread around the world that cache copies of your static content (images, JS, CSS, videos) close to users. Instead of everyone hitting your origin server in Virginia, a user in Tokyo gets the file from a server in Tokyo. Faster for users, less load on your server.

```
Without CDN:
  User (Tokyo) ──── 200ms ────→ Origin (Virginia)

With CDN:
  User (Tokyo) ── 10ms ──→ Edge (Tokyo) ── cache hit ──→ done
                                │
                           cache miss?
                                │
                           fetches from Origin, caches it
```

**Examples:** [Cloudflare](https://www.cloudflare.com/cdn/), [AWS CloudFront](https://aws.amazon.com/cloudfront/), [Fastly](https://www.fastly.com/), [Akamai](https://www.akamai.com/)
