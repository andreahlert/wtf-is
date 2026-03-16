# WTF is Multi-Cloud?

Using two or more cloud providers at the same time. You might run compute on AWS, databases on GCP, and CDN on Cloudflare. It avoids vendor lock-in and lets you pick the best service from each provider, but adds complexity.

```
+-------+     +-------+     +----------+
|  AWS  |     |  GCP  |     |  Azure   |
| compute|    | BigQuery|   | Active Dir|
| S3     |    | ML APIs |   | DevOps   |
+-------+     +-------+     +----------+
     \            |            /
      +-----+----+----+------+
      |   Your Application    |
      +-----------------------+
```

**Examples:** [Terraform](https://github.com/hashicorp/terraform), [Pulumi](https://github.com/pulumi/pulumi), [Crossplane](https://github.com/crossplane/crossplane)
