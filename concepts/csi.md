# WTF is CSI?

Container Storage Interface. A standard API that lets container orchestrators (like Kubernetes) use any storage system through plugins. The orchestrator doesn't care if it's AWS EBS, NFS, or Ceph, it just talks CSI.

```
Kubernetes
    |
    v
CSI Driver (plugin)
    |
    ├── AWS EBS
    ├── GCP Persistent Disk
    ├── NFS
    └── Ceph

PersistentVolumeClaim --> CSI --> provision/attach/mount
                                  the actual storage
```

**Examples:** [CSI Spec](https://github.com/container-storage-interface/spec), [aws-ebs-csi-driver](https://github.com/kubernetes-sigs/aws-ebs-csi-driver), [csi-driver-nfs](https://github.com/kubernetes-csi/csi-driver-nfs)
