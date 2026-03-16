# WTF is Data Masking?

Data Masking replaces sensitive data with realistic but fake or partially hidden values. Unlike encryption (reversible) or tokenization (lookup-based), masking is typically irreversible. It's used to protect data in non-production environments, logs, and analytics while keeping the data format usable.

```
Original data:
  name:  Alice Johnson
  email: alice@company.com
  card:  4242-4242-4242-4242
  ssn:   123-45-6789

Masked data:
  name:  A**** J******
  email: a****@c******.com
  card:  ****-****-****-4242
  ssn:   ***-**-6789

Use cases:
  ✓ Dev/staging databases (copy prod, mask sensitive fields)
  ✓ Logs (mask PII before writing)
  ✓ Analytics (keep patterns, hide identities)
```

**Examples:** [Delphix](https://www.delphix.com/), [PostgreSQL Anonymizer](https://github.com/dalibo/postgresql_anonymizer), [Faker](https://github.com/faker-js/faker)
