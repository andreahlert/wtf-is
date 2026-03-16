# WTF is Head-of-Line Blocking?

Head-of-line blocking happens when the first item in a queue blocks everything behind it. In HTTP/1.1, if the first request on a connection is slow, all following requests wait. HTTP/2 fixed this at the application layer with multiplexing, but TCP itself still has the problem: one lost packet blocks all streams. HTTP/3 (QUIC over UDP) fixes it at the transport layer too.

```
HTTP/1.1 (HOL blocking):
  Request 1 (slow) ████████████████████
  Request 2         .................... (waiting)
  Request 3         .................... (waiting)

HTTP/2 (fixed at app layer, still at TCP):
  Stream 1 ██ ██ ██
  Stream 2  ██ ██ ██     (multiplexed, no app-level HOL)
  Stream 3   ██ ██ ██
  But: TCP packet loss blocks ALL streams

HTTP/3 / QUIC (fixed at transport layer):
  Stream 1 ██ X ██       (packet loss only blocks stream 1)
  Stream 2  ██ ██ ██     (keeps flowing)
  Stream 3   ██ ██ ██    (keeps flowing)
```

**Examples:** [quiche](https://github.com/cloudflare/quiche), [h2 (Rust)](https://github.com/hyperium/h2), [nghttp2](https://github.com/nghttp2/nghttp2)
