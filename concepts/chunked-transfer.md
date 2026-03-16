# WTF is Chunked Transfer Encoding?

Chunked transfer encoding lets a server start sending a response before it knows the total size. Instead of setting Content-Length upfront, the server sends data in chunks, each prefixed with its size, and ends with a zero-length chunk. This is essential for streaming responses, server-sent events, and dynamically generated content.

```
Normal response:
  HTTP/1.1 200 OK
  Content-Length: 1234
  (must know size upfront)

Chunked response:
  HTTP/1.1 200 OK
  Transfer-Encoding: chunked

  1a\r\n                    (chunk size: 26 bytes)
  This is the first chunk.\r\n
  1c\r\n                    (chunk size: 28 bytes)
  And this is the second one.\r\n
  0\r\n                     (zero = end of response)
  \r\n

Server can start sending immediately
without knowing total size.
```

**Examples:** [Node.js streams](https://github.com/nodejs/node), [curl](https://github.com/curl/curl), [NGINX](https://github.com/nginx/nginx)
