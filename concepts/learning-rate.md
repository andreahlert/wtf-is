# WTF is a Learning Rate?

The learning rate controls how big of a step the model takes when updating its weights during gradient descent. Too high and the model overshoots and never converges. Too low and training takes forever or gets stuck. It's the single most important hyperparameter to get right.

```
  Loss
   │╲
   │ ╲   LR too high: bounces around
   │  ╲     ·    ·
   │   · ·    ·
   │
   │╲
   │ · · · ·  LR just right: smooth descent
   │          ·
   │            · (minimum)
   │
   │·
   │·· LR too low: barely moves
   │ ··
   └──────────────── training steps
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [Optuna](https://github.com/optuna/optuna)
