# WTF is a Cluster Autoscaler?

A Kubernetes component that automatically adjusts the number of nodes in your cluster. When pods can't be scheduled due to insufficient resources, it adds nodes. When nodes are underutilized for a while, it removes them to save cost.

```
Pending pods (no room):
  Cluster Autoscaler --> adds Node 4

  [Node 1] [Node 2] [Node 3] [Node 4 NEW]
  full     full     full      [pending pods go here]

Underutilized nodes:
  [Node 1] [Node 2] [Node 3 empty]
  Cluster Autoscaler --> removes Node 3
```

**Examples:** [Cluster Autoscaler](https://github.com/kubernetes/autoscaler), [Karpenter](https://github.com/aws/karpenter), [GKE Autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview)
