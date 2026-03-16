# WTF is Keep-Alive?

Keep-Alive is an HTTP header that tells the server to keep the TCP connection open after a response so it can be reused for subsequent requests. Without it, HTTP/1.0 closed the connection after every request/response cycle. HTTP/1.1 has keep-alive on by default. This avoids the overhead of repeated TCP handshakes and TLS negotiations.

```
Without Keep-Alive:              With Keep-Alive:

  TCP handshake                    TCP handshake
  GET /page.html                   GET /page.html
  response                         response
  TCP close                        GET /style.css    (reuse)
  TCP handshake                    response
  GET /style.css                   GET /app.js       (reuse)
  response                         response
  TCP close                        ...
  TCP handshake                    TCP close (after timeout)
  GET /app.js
  response
  TCP close

  3 handshakes                     1 handshake
```

**Examples:** [curl](https://github.com/curl/curl), [NGINX](https://github.com/nginx/nginx), [Apache httpd](https://github.com/apache/httpd)
