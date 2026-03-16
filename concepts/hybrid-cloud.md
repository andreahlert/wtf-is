# WTF is Hybrid Cloud?

A setup where you run workloads across both on-premises data centers and public cloud. Sensitive data stays on-prem, bursty workloads go to the cloud, and they talk to each other over a secure connection.

```
+--------------------+     VPN/Direct     +----------------+
|  On-Premises DC    | <================> |  Public Cloud  |
|  [database]        |    Connect         |  [web servers] |
|  [internal apps]   |                    |  [batch jobs]  |
|  (regulated data)  |                    |  (elastic)     |
+--------------------+                    +----------------+
```

**Examples:** [Anthos](https://cloud.google.com/anthos), [Azure Arc](https://azure.microsoft.com/en-us/products/azure-arc), [OpenShift](https://github.com/openshift/origin)
