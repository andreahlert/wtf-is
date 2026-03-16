# WTF is a Spot Instance?

Spare cloud capacity sold at a steep discount (up to 90% off). The catch: the cloud can reclaim it with a 2-minute warning whenever it needs the capacity back. Great for batch jobs, CI/CD, and anything that can handle interruptions.

```
On-Demand:  $0.10/hr  (guaranteed)
Spot:       $0.02/hr  (can be interrupted)

+----------+
| Spot VM  |  running your batch job...
+----------+
     |
  [2 min warning] --> save state, finish up
     |
  [terminated] --> retry on new spot or on-demand
```

**Examples:** [AWS Spot Instances](https://aws.amazon.com/ec2/spot/), [GCP Preemptible VMs](https://cloud.google.com/compute/docs/instances/preemptible), [Azure Spot VMs](https://azure.microsoft.com/en-us/products/virtual-machines/spot)
