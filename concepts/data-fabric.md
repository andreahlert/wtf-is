# WTF is Data Fabric?

Data fabric is an architecture that uses metadata, AI, and automation to create a unified data layer across all your data sources, regardless of where they live. Instead of moving all data to one place, it provides a virtual layer that lets you access, govern, and integrate data across on-prem, cloud, and hybrid environments.

```
  ┌──────────────────────────────────────┐
  │          Data Fabric Layer           │
  │  (metadata, governance, automation)  │
  └──┬──────────┬──────────┬────────────┘
     │          │          │
     ▼          ▼          ▼
  ┌──────┐  ┌──────┐  ┌────────┐
  │On-prem│  │Cloud │  │SaaS DB │
  │ MySQL │  │  S3  │  │Salesforce│
  └──────┘  └──────┘  └────────┘

  Query any source through one unified layer
```

**Examples:** [Denodo](https://www.denodo.com/), [IBM Cloud Pak for Data](https://www.ibm.com/cloud/cloud-pak-for-data), [Informatica](https://www.informatica.com/)
