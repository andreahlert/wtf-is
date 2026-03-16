# WTF is CORS?

Cross-Origin Resource Sharing. A browser security mechanism that blocks your frontend (running on `localhost:3000`) from making requests to a different origin (like `api.example.com`). The server has to explicitly say "I allow requests from this origin" by setting response headers. It only applies to browsers, not to curl or server-to-server calls.

```
Browser at localhost:3000 tries to fetch api.example.com/data:

  Browser ──→ OPTIONS /data (preflight)
              Origin: http://localhost:3000

  Server ←── Access-Control-Allow-Origin: http://localhost:3000  ← allowed
  or
  Server ←── (no header)                                         ← blocked

Common error:
  "Access to fetch at 'https://api.example.com' from origin
   'http://localhost:3000' has been blocked by CORS policy"

Fix: configure your server to return the right headers, not disable CORS.
```

**Examples:** Every frontend app that talks to a separate API has dealt with this
