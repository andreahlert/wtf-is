# WTF is Experiment Tracking?

Experiment tracking is logging every detail of your ML training runs: hyperparameters, metrics, code version, dataset version, and results. Without it, you end up with "model_final_v3_REAL_final.pt" and no idea which settings produced your best result. It makes ML work reproducible and comparable.

```
  ┌──────────────────────────────────────────────┐
  │           Experiment Tracker                  │
  ├──────┬────────┬──────┬────────┬──────────────┤
  │ Run  │ LR     │ Epochs│ Loss  │ Accuracy     │
  ├──────┼────────┼──────┼────────┼──────────────┤
  │ #42  │ 0.001  │ 10   │ 0.23  │ 94.2%  ← best│
  │ #41  │ 0.01   │ 10   │ 0.45  │ 89.1%        │
  │ #40  │ 0.001  │ 5    │ 0.31  │ 92.0%        │
  └──────┴────────┴──────┴────────┴──────────────┘
```

**Examples:** [MLflow](https://github.com/mlflow/mlflow), [Weights & Biases](https://wandb.ai/), [Neptune](https://github.com/neptune-ai/neptune-client)
