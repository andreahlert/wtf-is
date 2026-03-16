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

**Examples:** Kubernetes (k8s), k3s (lightweight), Amazon EKS, Google GKE, Azure AKS
