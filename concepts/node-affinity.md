# WTF is Node Affinity?

Rules that tell Kubernetes which nodes a pod prefers or requires to run on, based on node labels. It's a more expressive version of nodeSelector. You can say "must run on GPU nodes" or "prefer nodes in zone-a but it's not mandatory."

```
Nodes:
  node-1 [gpu=true, zone=a]
  node-2 [gpu=false, zone=b]
  node-3 [gpu=true, zone=b]

Pod affinity: requiredDuringScheduling -> gpu=true

Result: pod scheduled on node-1 or node-3 only
```

**Examples:** [Kubernetes Affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/), [GKE](https://cloud.google.com/kubernetes-engine), [EKS](https://aws.amazon.com/eks/)
