# WTF is Block Storage?

Storage divided into fixed-size chunks (blocks) that a server treats as a raw disk. You format it with a filesystem and mount it. Fast, low-latency, great for databases. Only one server can mount it at a time.

```
+--------+      mount       +---------------+
| Server | <=============>  | Block Volume  |
+--------+    /dev/sdb      | [blk][blk]    |
   |                        | [blk][blk]    |
   v                        +---------------+
ext4/xfs filesystem
on top of raw blocks
```

**Examples:** [AWS EBS](https://aws.amazon.com/ebs/), [GCP Persistent Disk](https://cloud.google.com/persistent-disk), [DigitalOcean Volumes](https://www.digitalocean.com/products/block-storage)
