# WTF is a Resource Quota?

A Kubernetes resource that limits the total amount of CPU, memory, storage, or object count a namespace can consume. It prevents one team from hogging all cluster resources.

```
Namespace: team-alpha
ResourceQuota:
  cpu: 10 cores max
  memory: 32Gi max
  pods: 50 max

Current usage:    Limit:
  cpu: 7/10       [=======   ] 70%
  memory: 20/32   [======    ] 62%
  pods: 30/50     [======    ] 60%

New pod requesting 4 cores? DENIED (would exceed 10).
```

**Examples:** [Kubernetes ResourceQuota](https://kubernetes.io/docs/concepts/policy/resource-quotas/), [Rancher](https://github.com/rancher/rancher), [Loft](https://github.com/loft-sh/loft)
