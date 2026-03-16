# WTF is iSCSI?

iSCSI (Internet Small Computer Systems Interface) lets you access remote block storage devices over a TCP/IP network as if they were local disks. Unlike NFS/SMB which share files, iSCSI shares raw disk blocks. The remote storage appears as a local disk that you can partition, format, and use with any filesystem. It's SAN storage without expensive Fibre Channel hardware.

```
Traditional (local disk):
  Server --> SATA/NVMe --> Disk

iSCSI (remote disk over network):
  Server (initiator) --> TCP/IP --> Storage (target)
  Sees it as /dev/sdb (local block device)

  Initiator                    Target (storage)
  ┌──────────┐    TCP/IP      ┌──────────────┐
  │ /dev/sdb │ <============> │ LUN 0: 500GB │
  │ (looks   │    iSCSI       │ LUN 1: 1TB   │
  │  local)  │    protocol    │              │
  └──────────┘                └──────────────┘

  You can format /dev/sdb with ext4, XFS, whatever.
  The OS doesn't know it's remote.
```

**Examples:** [LIO target](https://github.com/open-iscsi/target-isns), [open-iscsi](https://github.com/open-iscsi/open-iscsi), [tgt](https://github.com/fujita/tgt)
