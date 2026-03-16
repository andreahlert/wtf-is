# WTF is Edge Computing?

Running computation closer to where data is generated instead of sending everything to a central cloud. This reduces latency and bandwidth usage. Your code runs on servers near the user, in a factory, or on the device itself.

```
Traditional:
  User (Tokyo) ---5000km---> Cloud (Virginia)

Edge:
  User (Tokyo) ---5km---> Edge Node (Tokyo)

+--------+    +--------+    +--------+
| Edge   |    | Edge   |    | Edge   |
| Tokyo  |    | London |    | NYC    |
+--------+    +--------+    +--------+
        \         |         /
         +--------+--------+
         |  Central Cloud  |
         +-----------------+
```

**Examples:** [Cloudflare Workers](https://workers.cloudflare.com), [AWS CloudFront](https://aws.amazon.com/cloudfront/), [Fly.io](https://fly.io)
