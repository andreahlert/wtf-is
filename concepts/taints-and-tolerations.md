# WTF are Taints and Tolerations?

Taints mark a node to repel pods unless those pods explicitly tolerate the taint. It's like a "keep out" sign on a node. Only pods with a matching toleration can be scheduled there. Used to reserve nodes for specific workloads.

```
Node: gpu-node
  taint: gpu=true:NoSchedule

Pod A (no toleration):     REJECTED from gpu-node
Pod B (tolerates gpu=true): ALLOWED on gpu-node

Node: gpu-node [taint: gpu=true]
  +------+
  | Pod B |  (has toleration)
  +------+
  | Pod A |  NOPE, go elsewhere
```

**Examples:** [Kubernetes Taints](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/), [GKE](https://cloud.google.com/kubernetes-engine), [EKS](https://aws.amazon.com/eks/)
