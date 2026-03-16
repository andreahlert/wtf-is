# WTF is A/B Testing?

Show different versions of a feature to different user groups and measure which performs better. Group A sees the blue button, group B sees the green button. After enough data, the version with better metrics (clicks, conversions, retention) wins and rolls out to everyone.

```
  Users                    Variants
  ┌──────────┐
  │ 50% ─────┼────► Variant A (blue button)
  │          │         conversion: 3.2%
  │ 50% ─────┼────► Variant B (green button)
  │          │         conversion: 4.1%  ← winner!
  └──────────┘

  Statistical significance required
  before declaring a winner
```

**Examples:** [GrowthBook](https://github.com/growthbook/growthbook), [Unleash](https://github.com/Unleash/unleash), [Google Optimize](https://optimize.google.com/)
