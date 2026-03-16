# WTF is Content Negotiation?

Content negotiation is how a client and server agree on the format of a response. The client sends headers saying what it can accept (JSON, XML, HTML, specific languages, compression), and the server picks the best match. This lets the same URL serve different representations depending on who's asking.

```
Client request:
  GET /api/users
  Accept: application/json
  Accept-Language: pt-BR
  Accept-Encoding: gzip

Server checks:
  Can produce JSON?     ✓ (picks over XML)
  Has Portuguese?       ✓ (picks over English)
  Supports gzip?        ✓ (compresses response)

Server response:
  Content-Type: application/json
  Content-Language: pt-BR
  Content-Encoding: gzip

Same URL, different Accept header:
  Accept: text/html     → gets HTML page
  Accept: application/json → gets JSON
```

**Examples:** [Express.js](https://github.com/expressjs/express), [Spring MVC](https://github.com/spring-projects/spring-framework), [Django REST](https://github.com/encode/django-rest-framework)
