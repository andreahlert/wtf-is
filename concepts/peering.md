# WTF is VPC Peering?

A direct network connection between two VPCs that lets them communicate using private IP addresses as if they were on the same network. Traffic stays on the cloud provider's backbone, never touching the public internet.

```
VPC A: 10.0.0.0/16          VPC B: 10.1.0.0/16
+---------------+            +---------------+
|  [app server] | <=======>  | [database]    |
|  10.0.1.5     |  peering   |  10.1.2.10    |
+---------------+  (private) +---------------+

No internet, no VPN, just direct private routing.
```

**Examples:** [AWS VPC Peering](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html), [GCP VPC Peering](https://cloud.google.com/vpc/docs/vpc-peering), [Azure VNet Peering](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-peering-overview)
