# WTF is MLOps?

MLOps is DevOps for machine learning. It covers the practices and tools for deploying, monitoring, and maintaining ML models in production. Training a model is maybe 10% of the work; MLOps handles the other 90%: data pipelines, reproducibility, model versioning, serving, monitoring for drift, and retraining.

```
  ┌──────────────────────────────────────────────────┐
  │                   MLOps Lifecycle                 │
  │                                                  │
  │  Data ──► Train ──► Evaluate ──► Deploy ──► Monitor
  │   │                                          │   │
  │   └──────────────── Retrain ◄────────────────┘   │
  │                                                  │
  │  Tools: pipelines, registries, feature stores,   │
  │         experiment tracking, serving, monitoring  │
  └──────────────────────────────────────────────────┘
```

**Examples:** [MLflow](https://github.com/mlflow/mlflow), [Kubeflow](https://github.com/kubeflow/kubeflow), [ZenML](https://github.com/zenml-io/zenml)
