# WTF is Server-Sent Events?

A one-way channel where the server pushes updates to the browser over a single HTTP connection. Unlike WebSockets, it's only server-to-client. Dead simple to implement, auto-reconnects, and works with regular HTTP. Perfect for live feeds, notifications, and streaming responses.

```
  Client                         Server
    │── GET /stream ──────────────►│
    │   Accept: text/event-stream  │
    │                              │
    │◄── data: {"temp": 72} ──────│
    │◄── data: {"temp": 73} ──────│
    │◄── data: {"temp": 71} ──────│
    │         (keeps streaming)    │
```

**Examples:** [htmx SSE](https://github.com/bigskysoftware/htmx), [Mercure](https://github.com/dunglas/mercure), [Express SSE example](https://github.com/expressjs/express)
