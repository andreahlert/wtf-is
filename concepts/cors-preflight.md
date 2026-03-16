# WTF is CORS Preflight?

A CORS Preflight is an automatic OPTIONS request the browser sends before a cross-origin request that uses non-simple methods (PUT, DELETE) or custom headers. It asks the server "will you accept this request from this origin?" The server responds with allowed origins, methods, and headers. Only if the preflight passes does the browser send the actual request.

```
Browser at app.com wants: PUT https://api.com/data

Step 1: Preflight (automatic)
  OPTIONS /data HTTP/1.1
  Origin: https://app.com
  Access-Control-Request-Method: PUT

Step 2: Server responds
  Access-Control-Allow-Origin: https://app.com
  Access-Control-Allow-Methods: GET, PUT
  Access-Control-Max-Age: 86400

Step 3: Browser sends actual PUT (if preflight passed)
  PUT /data HTTP/1.1
  Origin: https://app.com

  Simple requests (GET, POST with form data) skip preflight.
```

**Examples:** [cors (Express)](https://github.com/expressjs/cors), [django-cors-headers](https://github.com/adamchainz/django-cors-headers), [MDN CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
