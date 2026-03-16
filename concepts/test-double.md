# WTF is a Test Double?

A generic term for any object that replaces a real dependency during testing. Mocks, stubs, fakes, and spies are all types of test doubles. Just like a stunt double replaces an actor in dangerous scenes, a test double replaces a database, API, or service in tests.

```
  Production:         Testing:
  ┌──────┐           ┌──────┐
  │ Code │──▶ DB     │ Code │──▶ Fake DB
  │      │──▶ API    │      │──▶ Stub API
  │      │──▶ Email  │      │──▶ Mock Email
  └──────┘           └──────┘
                     (test doubles)
```

**Examples:** [Sinon.js](https://github.com/sinonjs/sinon), [unittest.mock](https://github.com/python/cpython), [Mockito](https://github.com/mockito/mockito)
