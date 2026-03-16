# WTF is Twelve-Factor App?

A set of 12 principles for building apps that deploy cleanly to the cloud. The core ideas: store config in environment variables, treat backing services as attached resources, keep builds and releases separate, and make everything stateless and disposable.

```
The 12 Factors:

 1. Codebase        One repo, many deploys
 2. Dependencies    Explicitly declare them
 3. Config          Store in env vars
 4. Backing services Treat as attached resources
 5. Build/Release/Run  Separate the stages
 6. Processes       Stateless, share-nothing
 7. Port binding    Export services via port
 8. Concurrency     Scale via processes
 9. Disposability   Fast startup, graceful shutdown
10. Dev/prod parity Keep environments similar
11. Logs            Treat as event streams
12. Admin processes Run as one-off tasks
```

**Examples:** [12factor.net](https://12factor.net/), [Heroku](https://www.heroku.com/), [Docker](https://github.com/docker/cli)
