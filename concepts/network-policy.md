# WTF is a Network Policy?

A Kubernetes resource that controls which pods can talk to which other pods and external endpoints. By default, all pods can talk to everything. Network policies act as firewall rules at the pod level.

```
Without NetworkPolicy:
  [frontend] <--> [backend] <--> [database]
  [frontend] <--> [database]  (uh oh)

With NetworkPolicy on database:
  allow ingress from: backend only

  [frontend] --> [backend] --> [database] ✓
  [frontend] --------> [database] ✗ BLOCKED
```

**Examples:** [Calico](https://github.com/projectcalico/calico), [Cilium](https://github.com/cilium/cilium), [Antrea](https://github.com/antrea-io/antrea)
