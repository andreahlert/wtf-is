# WTF is Chaos Engineering?

Intentionally break things in production (or staging) to find weaknesses before they cause real outages. Kill random servers, inject network delays, fill disks, corrupt responses. If your system survives gracefully, great. If not, you found a bug before your users did.

```
  Normal:
  ┌───┐  ┌───┐  ┌───┐
  │ A │──│ B │──│ C │  everything works

  Chaos experiment:
  ┌───┐  ┌───┐  ┌───┐
  │ A │──│ B │✗ │ C │  kill B
  └───┘  └───┘  └───┘
    Does A handle B's failure?
    Does C recover? Alerts fire?

  Hypothesis → experiment → observe → learn
```

**Examples:** [Chaos Monkey](https://github.com/Netflix/chaosmonkey), [Litmus](https://github.com/litmuschaos/litmus), [Gremlin](https://www.gremlin.com/)
