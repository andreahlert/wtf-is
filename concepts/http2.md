# WTF is HTTP/2?

HTTP/2 is a major revision of HTTP that makes web pages load faster by multiplexing multiple requests over a single TCP connection. Instead of waiting for one response before sending the next request, it sends them all at once as binary frames. It also compresses headers and supports server push.

```
HTTP/1.1 (sequential)        HTTP/2 (multiplexed)

  |-- req 1 -->|                |-- req 1 --|
  |<- res 1 ---|                |-- req 2 --|-->  single
  |-- req 2 -->|                |-- req 3 --|     TCP
  |<- res 2 ---|                |<- res 2 --|     connection
  |-- req 3 -->|                |<- res 1 --|
  |<- res 3 ---|                |<- res 3 --|
```

**Examples:** [nghttp2](https://github.com/nghttp2/nghttp2), [h2 (Rust)](https://github.com/hyperium/h2), [Node.js http2](https://github.com/nodejs/node)
