# WTF is an Overlay Network?

A virtual network built on top of an existing physical network. It encapsulates packets so containers or VMs on different hosts can talk to each other as if they're on the same local network, regardless of the underlying infrastructure.

```
Host A (10.0.1.1)          Host B (10.0.2.1)
+-------------+            +-------------+
| Container 1 |            | Container 2 |
| 172.16.0.2  |            | 172.16.0.3  |
+------+------+            +------+------+
       |     encapsulate          |
       +===== overlay tunnel =====+
              (over physical network)

Containers see: 172.16.0.0/16 (flat network)
```

**Examples:** [Flannel](https://github.com/flannel-io/flannel), [Calico](https://github.com/projectcalico/calico), [Weave Net](https://github.com/weaveworks/weave)
