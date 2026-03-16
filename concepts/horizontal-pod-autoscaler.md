# WTF is a Horizontal Pod Autoscaler?

A Kubernetes resource that automatically adjusts the number of pod replicas based on observed metrics like CPU or memory usage. When load goes up, it adds pods. When load drops, it removes them.

```
CPU target: 50%

Low traffic:     [pod] [pod]          CPU: 30%
                   scale down to 2

High traffic:    [pod] [pod] [pod] [pod] [pod]   CPU: 48%
                   scale up to 5

HPA watches metrics --> adjusts replica count
```

**Examples:** [Kubernetes HPA](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/), [KEDA](https://github.com/kedacore/keda), [Karpenter](https://github.com/aws/karpenter)
