# WTF is Adapter Pattern?

A wrapper that makes an incompatible interface work with the one you expect. Like a power plug adapter for travel. Your code expects interface A, the library provides interface B, so you write an adapter that translates between them.

```
  Your Code         Adapter          Third-Party
  ┌──────┐     ┌──────────────┐     ┌──────────┐
  │      │     │ translate     │     │          │
  │ send │────►│ send()       │────►│ post()   │
  │ Mail │     │   → post()   │     │ ExtMail  │
  │      │     │              │     │          │
  └──────┘     └──────────────┘     └──────────┘
  expects         bridges the        has different
  sendMail()      gap                method names
```

**Examples:** [axios](https://github.com/axios/axios), [SQLAlchemy](https://github.com/sqlalchemy/sqlalchemy), [Flysystem](https://github.com/thephpleague/flysystem)
