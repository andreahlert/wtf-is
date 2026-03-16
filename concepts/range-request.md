# WTF is Range Request?

Range requests let a client download only a specific portion of a file instead of the whole thing. The client sends a `Range` header specifying which bytes it wants, and the server responds with 206 Partial Content. This is how video players seek to a specific timestamp, how downloads resume after interruption, and how PDFs load specific pages.

```
Full download:
  GET /movie.mp4
  → 200 OK (2 GB, all of it)

Range request:
  GET /movie.mp4
  Range: bytes=1000000-1999999

  → 206 Partial Content
    Content-Range: bytes 1000000-1999999/2000000000
    (just 1 MB chunk)

Resume interrupted download:
  Downloaded 500MB, connection dropped.
  GET /file.zip
  Range: bytes=524288000-
  → 206 Partial Content (remaining bytes)

Video seeking to 50%:
  Range: bytes=1000000000-1000100000
```

**Examples:** [NGINX](https://github.com/nginx/nginx), [curl](https://github.com/curl/curl), [Apache httpd](https://github.com/apache/httpd)
