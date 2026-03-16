# WTF is API Versioning?

A strategy for evolving your API without breaking existing clients. When you need to make incompatible changes, you release a new version. Clients choose which version to use. Common approaches: URL path (`/v2/users`), header (`Accept: v2`), or query param (`?version=2`).

```
  URL Path:     GET /v1/users    GET /v2/users
  Header:       Accept: application/vnd.api+json;version=2
  Query Param:  GET /users?version=2

  ┌────────┐    /v1/users ──► ┌──────────┐
  │ Old    │─────────────────►│ v1 logic │
  │ Client │                  └──────────┘
  └────────┘
  ┌────────┐    /v2/users ──► ┌──────────┐
  │ New    │─────────────────►│ v2 logic │
  │ Client │                  └──────────┘
  └────────┘
```

**Examples:** [Stripe API Versioning](https://stripe.com/docs/api/versioning), [Kubernetes API](https://github.com/kubernetes/kubernetes), [Microsoft REST API Guidelines](https://github.com/microsoft/api-guidelines)
