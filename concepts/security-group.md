# WTF is a Security Group?

A virtual firewall that controls inbound and outbound traffic for cloud resources. You define rules like "allow TCP port 443 from anywhere" or "allow port 5432 only from the app subnet." Everything not explicitly allowed is denied.

```
Security Group: web-sg
+-------------------------------+
| Inbound Rules:                |
|   TCP 443  from 0.0.0.0/0  ✓ |
|   TCP 80   from 0.0.0.0/0  ✓ |
|   TCP 22   from 10.0.1.0/24 ✓|
|   everything else           ✗ |
+-------------------------------+
          attached to
        [web server instance]
```

**Examples:** [AWS Security Groups](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html), [GCP Firewall Rules](https://cloud.google.com/firewall), [Azure NSG](https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview)
