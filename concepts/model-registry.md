# WTF is a Model Registry?

A model registry is a centralized store for tracking trained ML models, their versions, metadata, and deployment status. It's like a package registry but for models. You push trained models to it, tag them as "staging" or "production," and pull them when deploying.

```
  ┌─────────────────────────────────────────┐
  │            Model Registry               │
  ├─────────┬─────────┬──────────┬──────────┤
  │ Model   │ Version │ Metrics  │ Stage    │
  ├─────────┼─────────┼──────────┼──────────┤
  │ fraud-v │ 3.2     │ F1: 0.94 │ prod     │
  │ fraud-v │ 3.1     │ F1: 0.91 │ archived │
  │ churn-v │ 1.0     │ AUC: 0.87│ staging  │
  └─────────┴─────────┴──────────┴──────────┘
```

**Examples:** [MLflow](https://github.com/mlflow/mlflow), [Hugging Face Hub](https://huggingface.co/models), [Weights & Biases](https://wandb.ai/)
