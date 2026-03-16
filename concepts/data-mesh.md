# WTF is Data Mesh?

Data mesh is an organizational approach where each domain team owns and publishes their own data as a product, instead of funneling everything through a central data team. The platform team provides self-serve infrastructure, and federated governance sets shared standards. It applies domain-driven design principles to data architecture.

```
  Traditional (centralized):     Data Mesh (decentralized):
  ┌────────┐                     ┌────────┐ owns ┌──────────┐
  │ Team A │──dump──┐            │ Team A │─────▶│ Orders   │
  │ Team B │──dump──┤            └────────┘      │ data prod│
  │ Team C │──dump──┤            ┌────────┐ owns ┌──────────┐
  └────────┘        ▼            │ Team B │─────▶│ Payments │
              ┌──────────┐       └────────┘      │ data prod│
              │ Data Team│
              │ (bottle- │       Platform provides self-serve infra
              │  neck)   │       Governance sets shared standards
              └──────────┘
```

**Examples:** [DataHub](https://github.com/datahub-project/datahub), [OpenMetadata](https://github.com/open-metadata/OpenMetadata), [Datamesh Architecture](https://www.datamesh-architecture.com/)
