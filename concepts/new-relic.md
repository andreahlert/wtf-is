# WTF is New Relic?

A commercial observability platform that provides APM, infrastructure monitoring, log management, and browser monitoring. You add a New Relic agent to your application, and it auto-instruments your code to track performance, errors, and dependencies. Competes directly with Datadog.

```
  Your App [New Relic Agent]
       │
       ▼
  New Relic Platform
  ┌────────────────────────┐
  │ APM        → slow endpoints, DB queries  │
  │ Infra      → CPU, memory, disk           │
  │ Logs       → centralized search          │
  │ Browser    → frontend performance        │
  │ Errors     → stack traces, grouping      │
  └────────────────────────┘
```

**Examples:** [New Relic](https://newrelic.com), [New Relic Python Agent](https://github.com/newrelic/newrelic-python-agent), [New Relic Node Agent](https://github.com/newrelic/node-newrelic)
