# WTF is Multiplexing?

Multiplexing sends multiple independent streams of data over a single connection simultaneously. Instead of opening one connection per request (or waiting for each to finish), you interleave frames from different streams on the same wire. HTTP/2 introduced this for web requests, and QUIC takes it further with independent streams that don't block each other.

```
Without multiplexing (HTTP/1.1):
  Connection 1: ===req1===>  <===res1===
  Connection 2: ===req2===>  <===res2===
  Connection 3: ===req3===>  <===res3===
  (one request per connection)

With multiplexing (HTTP/2):
  Single connection:
  --[frame:stream1][frame:stream2][frame:stream3]-->
  <-[frame:stream2][frame:stream1][frame:stream3]--

  Stream 1: ▓▓   ▓▓   ▓▓
  Stream 2:   ▓▓   ▓▓   ▓▓
  Stream 3:  ▓▓  ▓▓  ▓▓
  ─────────────────────────> time
  All on one TCP connection
```

**Examples:** [nghttp2](https://github.com/nghttp2/nghttp2), [h2 (Rust)](https://github.com/hyperium/h2), [quinn](https://github.com/quinn-rs/quinn)
