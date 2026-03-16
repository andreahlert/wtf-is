# WTF is Feature Toggle?

A flag in your code that turns features on or off without deploying new code. Deploy the feature hidden behind a toggle, then flip it on for specific users, percentages, or environments. If something breaks, flip it off instantly. Also called feature flags.

```
  if (featureFlags.isEnabled("new-checkout")) {
    newCheckout();   // new code path
  } else {
    oldCheckout();   // existing code path
  }

  Dashboard:
  ┌──────────────────────────────┐
  │ new-checkout    [ON ] 10%    │
  │ dark-mode       [ON ] 100%  │
  │ beta-search     [OFF]       │
  └──────────────────────────────┘
```

**Examples:** [LaunchDarkly](https://launchdarkly.com/), [Unleash](https://github.com/Unleash/unleash), [Flipt](https://github.com/flipt-io/flipt)
