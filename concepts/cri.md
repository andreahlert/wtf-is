# WTF is CRI?

Container Runtime Interface. A Kubernetes API that defines how the kubelet talks to container runtimes. Any CRI-compliant runtime can run pods without Kubernetes caring about the implementation details.

```
kubelet
    |
    v (CRI gRPC API)
    |
    ├── containerd    (Docker's runtime, most common)
    ├── CRI-O         (built specifically for Kubernetes)
    └── any CRI-compliant runtime

CRI defines:
  - RunPodSandbox / StopPodSandbox
  - CreateContainer / StartContainer
  - PullImage / ListImages
```

**Examples:** [CRI API](https://github.com/kubernetes/cri-api), [containerd](https://github.com/containerd/containerd), [CRI-O](https://github.com/cri-o/cri-o)
