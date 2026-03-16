# WTF is containerd vs CRI-O?

Both are container runtimes that implement CRI for Kubernetes. containerd is a general-purpose runtime extracted from Docker. CRI-O is purpose-built for Kubernetes with nothing extra. Both use runc underneath.

```
Kubernetes kubelet
    |
    v (CRI)
    |
    ├── containerd                 ├── CRI-O
    |   ├── image management       |   ├── image management
    |   ├── Docker compat          |   ├── K8s-only scope
    |   ├── snapshots, plugins     |   ├── minimal, focused
    |   └── runc                   |   └── runc
    |                              |
    General purpose,               K8s-specific,
    more features                  smaller surface
```

**Examples:** [containerd](https://github.com/containerd/containerd), [CRI-O](https://github.com/cri-o/cri-o), [runc](https://github.com/opencontainers/runc)
