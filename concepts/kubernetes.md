# WTF is Kubernetes?

A system that manages containers in production. You tell it "I want 3 copies of my app running at all times" and it handles the rest: scheduling, scaling, restarting crashed containers, rolling out updates. You describe the desired state, Kubernetes makes it happen.

```
You say:                     Kubernetes does:
"run 3 copies"          ┌──→ [app] on node-1
   │                    ├──→ [app] on node-2
   └──→ K8s ───────────┴──→ [app] on node-3
                                │
                            [app] crashes
                                │
                        K8s: "let me restart that"
                                │
                           ┌──→ [app] ✓ back up
```

**Examples:** [Kubernetes](https://github.com/kubernetes/kubernetes) (k8s), [k3s](https://github.com/k3s-io/k3s) (lightweight), [Amazon EKS](https://aws.amazon.com/eks/), [Google GKE](https://cloud.google.com/kubernetes-engine), [Azure AKS](https://azure.microsoft.com/en-us/products/kubernetes-service)
