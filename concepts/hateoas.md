# WTF is HATEOAS?

Hypermedia As The Engine Of Application State. A REST API response includes links telling the client what actions are available next. Instead of hardcoding URLs, the client follows links from the response. Like navigating a website by clicking links instead of memorizing URLs.

```
  GET /orders/42

  {
    "id": 42,
    "status": "shipped",
    "links": [
      {"rel": "self",   "href": "/orders/42"},
      {"rel": "cancel", "href": "/orders/42/cancel"},
      {"rel": "track",  "href": "/tracking/abc123"}
    ]
  }

  Client doesn't hardcode URLs, it follows links
```

**Examples:** [Spring HATEOAS](https://github.com/spring-projects/spring-hateoas), [HAL Specification](https://stateless.group/hal_specification.html), [JSON:API](https://github.com/json-api/json-api)
