# WTF is a Subnet?

A smaller IP range carved out of your VPC's address space. You typically create public subnets (internet-facing) and private subnets (internal only) to control which resources are exposed and which are hidden.

```
VPC: 10.0.0.0/16
+--------------------+--------------------+
| Public Subnet      | Private Subnet     |
| 10.0.1.0/24        | 10.0.2.0/24        |
|                    |                    |
| [load balancer]    | [database]         |
| [bastion]          | [app servers]      |
|                    |                    |
| --> internet       | --> no internet    |
+--------------------+--------------------+
```

**Examples:** [AWS VPC Subnets](https://aws.amazon.com/vpc/), [GCP Subnets](https://cloud.google.com/vpc/docs/subnets), [Azure Subnets](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-vnet-plan-design-arm)
