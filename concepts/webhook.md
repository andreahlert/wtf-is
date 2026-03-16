# WTF is Webhook?

A user-defined HTTP callback. Instead of you repeatedly asking "anything new?", the service calls YOUR URL when something happens. You register a URL, and when the event fires (payment completed, PR merged), the service POSTs data to your endpoint.

```
  GitHub                        Your Server
  ┌──────────┐    POST /hook    ┌──────────┐
  │ PR merged│─────────────────►│ Handle   │
  │          │  {event: data}   │ event    │
  └──────────┘                  └──────────┘

  Instead of:
  Your Server ──► "anything new?" ──► GitHub
  Your Server ──► "anything new?" ──► GitHub  (wasteful)
```

**Examples:** [Svix](https://github.com/svix/svix-webhooks), [GitHub Webhooks](https://docs.github.com/en/webhooks), [Stripe Webhooks](https://stripe.com/docs/webhooks)
