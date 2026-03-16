# WTF is Hyperparameter Tuning?

Hyperparameter tuning is searching for the best settings (learning rate, batch size, layer count, etc.) that you set before training starts. These aren't learned by the model; you have to pick them. Tuning automates this by trying many combinations and keeping whatever produces the best validation metrics.

```
  Search space:
  learning_rate: [0.1, 0.01, 0.001]
  batch_size:    [16, 32, 64]
  layers:        [2, 4, 8]

  ┌─────────┐   ┌─────────┐   ┌─────────┐
  │ Trial 1 │   │ Trial 2 │   │ Trial 3 │  ... Trial N
  │ lr=0.01 │   │ lr=0.001│   │ lr=0.1  │
  │ bs=32   │   │ bs=64   │   │ bs=16   │
  │ acc=91% │   │ acc=95% │   │ acc=72% │
  └─────────┘   └────┬────┘   └─────────┘
                     best
```

**Examples:** [Optuna](https://github.com/optuna/optuna), [Ray Tune](https://github.com/ray-project/ray), [Keras Tuner](https://github.com/keras-team/keras-tuner)
