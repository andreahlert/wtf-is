# WTF is a Transit Gateway?

A hub that connects multiple VPCs and on-premises networks through a single central point. Instead of creating a mesh of peering connections between every pair of VPCs, everything connects to the transit gateway.

```
Without Transit GW:        With Transit GW:
VPC-A <-> VPC-B             VPC-A --\
VPC-A <-> VPC-C                      +-> [Transit GW]
VPC-B <-> VPC-C             VPC-B --/        |
  (N*(N-1)/2 links)         VPC-C -----------+
                             On-Prem ---------+
                               (N links)
```

**Examples:** [AWS Transit Gateway](https://aws.amazon.com/transit-gateway/), [GCP Network Connectivity Center](https://cloud.google.com/network-connectivity-center), [Azure Virtual WAN](https://azure.microsoft.com/en-us/products/virtual-wan)
