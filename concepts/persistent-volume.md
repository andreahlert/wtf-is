# WTF is a Persistent Volume?

Storage in Kubernetes that survives pod restarts and rescheduling. Regular container storage disappears when a pod dies. A Persistent Volume is a piece of storage provisioned independently, so your data sticks around even if the pod using it gets replaced.

```
Pod dies:
  [pod-v1] --uses--> [PersistentVolume: /data]
     X                       |
                             |  (data survives)
  [pod-v2] --uses--> [PersistentVolume: /data]
```

**Examples:** [Kubernetes PV](https://kubernetes.io/docs/concepts/storage/persistent-volumes/), [Longhorn](https://github.com/longhorn/longhorn), [Rook](https://github.com/rook/rook)
