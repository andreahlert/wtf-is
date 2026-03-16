# WTF is a Stress Test?

A test that pushes your system beyond its normal capacity to find the breaking point. Unlike load tests (which simulate expected traffic), stress tests intentionally overload the system. The goal is to find out how your system fails and whether it recovers gracefully.

```
  Load ──────────────────▶
        normal   peak   BOOM
  ─────|────────|───────|────▶
        ✓ OK     ✓ slow  ✗ crash?
                          ✗ or graceful degradation?
```

**Examples:** [k6](https://github.com/grafana/k6), [Locust](https://github.com/locustio/locust), [Artillery](https://github.com/artilleryio/artillery)
