# WTF is Auto Scaling?

Automatically adding or removing compute resources based on demand. When traffic spikes, more instances spin up. When traffic drops, they're terminated. You set the rules (min, max, target metric) and the cloud handles the rest.

```
Traffic:  low    medium    HIGH     medium    low
Servers:  [2] -> [2]   -> [5]   -> [3]    -> [2]
               scale up          scale down

Rules:
  min: 2, max: 10
  target CPU: 60%
```

**Examples:** [AWS Auto Scaling](https://aws.amazon.com/autoscaling/), [GCP Autoscaler](https://cloud.google.com/compute/docs/autoscaler), [KEDA](https://github.com/kedacore/keda)
