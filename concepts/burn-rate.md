# WTF is a Burn Rate?

How fast you're consuming your error budget. A burn rate of 1x means you'll use the entire budget exactly at the end of the window. A burn rate of 10x means you'll exhaust it in 1/10th of the time. High burn rate alerts tell you something is wrong now, not at the end of the month.

```
  Error budget: 43 min/month

  Burn rate 1x:  using 43 min over 30 days  (normal)
  Burn rate 2x:  using 43 min over 15 days  (watch it)
  Burn rate 10x: using 43 min over 3 days   (page now!)

  ▲ budget remaining
  │╲
  │  ╲  10x burn
  │    ╲
  │      ╲_____ budget gone in 3 days
  └───────────────────────────▶ time
```

**Examples:** [Sloth](https://github.com/slok/sloth), [Google SRE Book](https://sre.google/workbook/alerting-on-slos/), [Nobl9](https://www.nobl9.com)
