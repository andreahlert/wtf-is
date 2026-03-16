# WTF is a VPC (Virtual Private Cloud)?

Your own isolated network inside a cloud provider. You control the IP ranges, subnets, routing tables, and access rules. Resources inside a VPC can talk to each other but are isolated from other customers and the internet by default.

```
AWS Cloud
+-----------------------------+
| VPC: 10.0.0.0/16           |
|  +----------+ +----------+ |
|  | Subnet A | | Subnet B | |
|  | 10.0.1.x | | 10.0.2.x | |
|  | [web]    | | [db]     | |
|  +----------+ +----------+ |
+-----------------------------+
      (isolated from everything else)
```

**Examples:** [AWS VPC](https://aws.amazon.com/vpc/), [GCP VPC](https://cloud.google.com/vpc), [Azure VNet](https://azure.microsoft.com/en-us/products/virtual-network)
