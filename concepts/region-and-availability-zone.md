# WTF are Region and Availability Zone?

A region is a geographic area where a cloud provider has data centers (e.g., us-east-1). An availability zone (AZ) is an isolated data center within that region. Spreading across AZs protects you from a single data center failing.

```
Region: us-east-1 (Virginia)
+------------+  +------------+  +------------+
|   AZ-1a    |  |   AZ-1b    |  |   AZ-1c    |
| [server]   |  | [server]   |  | [server]   |
| [server]   |  | [server]   |  | [server]   |
+------------+  +------------+  +------------+
  separate power, network, cooling

AZ-1a goes down? AZ-1b and AZ-1c keep running.
```

**Examples:** [AWS Regions](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/), [GCP Regions](https://cloud.google.com/about/locations), [Azure Regions](https://azure.microsoft.com/en-us/explore/global-infrastructure/geographies/)
