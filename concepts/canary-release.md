# WTF is a Canary Release?

You deploy a new version but only send a small percentage of traffic to it. If metrics look good, you gradually increase the percentage until the new version handles all traffic. If something goes wrong, only a few users are affected.

```
Load Balancer
      |
  95% / \ 5%
      v   v
    v1.0  v1.1
  (stable) (canary)
```

**Examples:** [Flagger](https://github.com/fluxcd/flagger), [Argo Rollouts](https://github.com/argoproj/argo-rollouts), [Istio](https://github.com/istio/istio)
