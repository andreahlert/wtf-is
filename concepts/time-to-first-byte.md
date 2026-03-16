# WTF is Time to First Byte (TTFB)?

The time between the browser sending a request and receiving the first byte of the response. It measures server responsiveness plus network latency. A slow TTFB means the server is taking too long to process the request, or the server is far away, or both.

```
Browser sends request
│
├── DNS lookup
├── TCP connection
├── TLS handshake
├── Server processing...
│
└── First byte received ◄── TTFB

Good: < 800ms
```

**Examples:** [WebPageTest](https://www.webpagetest.org), [Lighthouse](https://github.com/GoogleChrome/lighthouse), [web-vitals](https://github.com/GoogleChrome/web-vitals)
