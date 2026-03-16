# WTF is HTTP?

HTTP (HyperText Transfer Protocol) is a request-response protocol for fetching resources over the web. A client sends a request with a method (GET, POST, PUT, DELETE), a path, and headers. The server responds with a status code, headers, and optionally a body. It runs on top of TCP and is stateless by default.

```
Client                          Server
  |                                |
  |--- GET /index.html HTTP/1.1 ->|
  |    Host: example.com          |
  |                                |
  |<-- HTTP/1.1 200 OK -----------|
  |    Content-Type: text/html    |
  |    <html>...</html>           |
  |                                |
```

**Examples:** [curl](https://github.com/curl/curl), [httpbin](https://github.com/postmanlabs/httpbin), [h2o](https://github.com/h2o/h2o)
