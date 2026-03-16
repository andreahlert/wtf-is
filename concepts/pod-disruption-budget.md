# WTF is a Pod Disruption Budget?

A Kubernetes resource that limits how many pods of a deployment can be down at the same time during voluntary disruptions (node drains, upgrades, autoscaling). It prevents cluster maintenance from accidentally killing your entire app.

```
Deployment: 5 replicas
PodDisruptionBudget: minAvailable: 3

Node drain requested:
  [pod1] [pod2] [pod3] [pod4] [pod5]
  drain  drain  keep   keep   keep   ✓ (3 available)
  drain  drain  drain  keep   keep   ✗ BLOCKED (only 2 left)
```

**Examples:** [Kubernetes PDB](https://kubernetes.io/docs/tasks/run-application/configure-pdb/), [Karpenter](https://github.com/aws/karpenter), [Rancher](https://github.com/rancher/rancher)
