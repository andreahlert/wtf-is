# WTF is NFS?

NFS (Network File System) lets you access files on a remote server as if they were on your local filesystem. You mount a remote directory and read/write files transparently. Your applications don't need to know the files are remote. It's the standard for shared storage in Unix/Linux environments, commonly used for home directories, shared data, and Kubernetes persistent volumes.

```
NFS Server (10.0.0.5)
  /exports/shared/
    ├── data.csv
    └── reports/

Client machine:
  mount 10.0.0.5:/exports/shared /mnt/shared

  $ ls /mnt/shared
  data.csv  reports/

  $ cat /mnt/shared/data.csv    (reads from server)
  $ echo "new" > /mnt/shared/x  (writes to server)

  Looks and feels local. Kernel handles the RPC calls.

Multiple clients can mount the same export:
  Client A ──┐
  Client B ──┼──> NFS Server:/exports/shared
  Client C ──┘
```

**Examples:** [Linux NFS](https://github.com/torvalds/linux/tree/master/fs/nfs), [nfs-ganesha](https://github.com/nfs-ganesha/nfs-ganesha), [NFS CSI driver](https://github.com/kubernetes-csi/csi-driver-nfs)
