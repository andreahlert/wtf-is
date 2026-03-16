# WTF is a NAT Gateway?

A managed service that lets resources in a private subnet access the internet (to download packages, call APIs) without being directly reachable from the internet. Outbound traffic goes through the NAT; inbound connections from outside are blocked.

```
Private Subnet             NAT Gateway          Internet
+----------+               +---------+
| [server] |-- outbound -->| NAT GW  |-------> apt update ✓
|          |               |         |
|          |<-- inbound ---|  BLOCKED |<------- attacker  ✗
+----------+               +---------+
```

**Examples:** [AWS NAT Gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), [GCP Cloud NAT](https://cloud.google.com/nat), [Azure NAT Gateway](https://azure.microsoft.com/en-us/products/azure-nat-gateway)
