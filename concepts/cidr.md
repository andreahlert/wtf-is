# WTF is CIDR?

Classless Inter-Domain Routing. A way to define a range of IP addresses using a compact notation. The number after the slash tells you how many bits of the address are fixed (the network part). The rest are available for hosts. `10.0.0.0/24` means "all IPs from 10.0.0.0 to 10.0.0.255."

```
10.0.0.0/24

  10.0.0.  |  0
  ───────────────
  fixed    |  free (8 bits = 256 addresses)
  (24 bits)

Common ranges:
  /32  = 1 IP (single host)
  /24  = 256 IPs (typical subnet)
  /16  = 65,536 IPs
  /8   = 16,777,216 IPs
  /0   = all IPs

VPC example:
  VPC:        10.0.0.0/16     (65k addresses)
  ├── Public:  10.0.1.0/24   (256 addresses)
  └── Private: 10.0.2.0/24   (256 addresses)
```

**Examples:** [AWS VPCs](https://docs.aws.amazon.com/vpc/), [security groups](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html), [firewall rules](https://cloud.google.com/firewall/docs), [routing tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
