# WTF is Blue-Green Deployment?

You run two identical production environments: Blue (current) and Green (new version). Once Green is tested and ready, you switch all traffic to it. If something breaks, you switch back to Blue instantly.

```
Load Balancer
      |
  [switch]
   /     \
  v       v
BLUE     GREEN
(v1)     (v2)
active   standby
```

**Examples:** [Argo Rollouts](https://github.com/argoproj/argo-rollouts), [Flagger](https://github.com/fluxcd/flagger), [AWS CodeDeploy](https://aws.amazon.com/codedeploy/)
