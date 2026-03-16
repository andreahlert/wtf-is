# WTF is Dark Launching?

Deploy a new feature to production but don't show it to users. Run the new code path silently alongside the old one, comparing results or measuring performance. You catch bugs and performance issues with real production traffic before anyone sees the feature.

```
  Request
     │
     ├──► Old code path ──► response to user
     │
     └──► New code path ──► log results (hidden)
                              compare with old
                              measure latency

  Users see:      old behavior only
  You see:        comparison metrics
  Risk:           near zero (new path is invisible)
```

**Examples:** [LaunchDarkly](https://launchdarkly.com/), [Scientist](https://github.com/github/scientist), [Flipt](https://github.com/flipt-io/flipt)
