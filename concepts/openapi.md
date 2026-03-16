# WTF is OpenAPI?

A standard format (YAML/JSON) for describing REST APIs. Define your endpoints, request/response schemas, auth methods, and more in one file. Tools can then auto-generate docs, client SDKs, server stubs, and tests from that single spec. Formerly known as Swagger.

```
  openapi.yaml
  ┌─────────────────────────┐
  │ paths:                  │
  │   /users:               │
  │     get:                │──► generate docs
  │       summary: List     │──► generate SDK
  │       responses:        │──► generate tests
  │         200:            │──► validate requests
  │           schema: ...   │
  └─────────────────────────┘
     One spec → many outputs
```

**Examples:** [Swagger UI](https://github.com/swagger-api/swagger-ui), [openapi-generator](https://github.com/OpenAPITools/openapi-generator), [Redocly](https://github.com/Redocly/redoc)
