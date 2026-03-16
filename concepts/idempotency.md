# WTF is Idempotency?

An operation is idempotent if doing it once or doing it ten times produces the same result. Important for APIs and distributed systems because requests can be retried (network hiccup, timeout, duplicate message) and you don't want to charge a customer twice or create duplicate records.

```
Idempotent:
  PUT /users/42 { name: "Alice" }    ← call it 5 times, still one Alice
  DELETE /users/42                    ← call it 5 times, still deleted

NOT idempotent:
  POST /payments { amount: 100 }     ← call it 5 times, charged $500

Fix: use an idempotency key
  POST /payments { amount: 100 }
  Header: Idempotency-Key: abc-123   ← server deduplicates by this key
```

**Examples:** Stripe (Idempotency-Key header), AWS (client tokens), any well-designed API
