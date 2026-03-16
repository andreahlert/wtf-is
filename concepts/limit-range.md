# WTF is a Limit Range?

A Kubernetes policy that sets default, minimum, and maximum resource limits for individual containers in a namespace. While ResourceQuota caps the whole namespace, LimitRange caps each container so no single pod can be greedy.

```
LimitRange in namespace "dev":
  container defaults:  cpu=200m, mem=256Mi
  container max:       cpu=2,    mem=2Gi
  container min:       cpu=50m,  mem=64Mi

Pod with no limits set?
  Gets defaults: 200m CPU, 256Mi memory

Pod requesting 4 CPU?
  DENIED (max is 2)
```

**Examples:** [Kubernetes LimitRange](https://kubernetes.io/docs/concepts/policy/limit-range/), [Kyverno](https://github.com/kyverno/kyverno), [OPA Gatekeeper](https://github.com/open-policy-agent/gatekeeper)
