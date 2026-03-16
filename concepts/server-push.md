# WTF is Server Push?

Server Push is an HTTP/2 feature where the server proactively sends resources to the client before the client asks for them. When the server knows the client will need style.css and app.js after requesting index.html, it pushes them immediately instead of waiting for the browser to parse the HTML and request them. In practice, it's been mostly replaced by preload hints.

```
Without Server Push:
  Client           Server
    |--GET /-------->|
    |<--index.html---|
    |  (parses HTML) |
    |--GET /style--->|
    |<--style.css----|
    |--GET /app.js-->|
    |<--app.js-------|

With Server Push:
  Client           Server
    |--GET /-------->|
    |<--index.html---|
    |<--PUSH style---|  (server pushes without being asked)
    |<--PUSH app.js--|
    (no extra round trips)
```

**Examples:** [h2o](https://github.com/h2o/h2o), [nghttp2](https://github.com/nghttp2/nghttp2), [NGINX](https://github.com/nginx/nginx)
