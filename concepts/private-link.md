# WTF is Private Link?

A way to access a cloud service (like S3, a database, or a third-party SaaS) through a private endpoint inside your VPC. Traffic never leaves the cloud provider's network, so it never touches the public internet.

```
Without Private Link:
  VPC --> internet --> S3

With Private Link:
  VPC --> [Private Endpoint] --> S3
          (stays on private network)

+--------+     +------------------+     +-----+
| Your   | --> | Private Endpoint | --> | S3  |
| VPC    |     | (10.0.3.50)      |     |     |
+--------+     +------------------+     +-----+
              no internet involved
```

**Examples:** [AWS PrivateLink](https://aws.amazon.com/privatelink/), [GCP Private Service Connect](https://cloud.google.com/vpc/docs/private-service-connect), [Azure Private Link](https://azure.microsoft.com/en-us/products/private-link)
