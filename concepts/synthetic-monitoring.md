# WTF is Synthetic Monitoring?

Automated scripts that simulate real user actions (load a page, log in, make a purchase) at regular intervals from multiple locations around the world. Unlike real user monitoring, synthetic tests run 24/7 even when no real users are active. They catch outages before your customers do.

```
  Synthetic checks (every 60 seconds):

  Tokyo    ──▶ GET /login  ──▶ 200 OK  150ms ✓
  New York ──▶ GET /login  ──▶ 200 OK   45ms ✓
  London   ──▶ GET /login  ──▶ 503     timeout ✗
                                         │
                              Alert: London region down!
```

**Examples:** [Checkly](https://github.com/checkly/checkly-cli), [Grafana Synthetic Monitoring](https://github.com/grafana/synthetic-monitoring-agent), [Pingdom](https://www.pingdom.com)
