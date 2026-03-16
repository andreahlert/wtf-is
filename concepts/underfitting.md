# WTF is Underfitting?

Underfitting is when a model is too simple to capture the patterns in the data. It performs poorly on both training and test data. It's the opposite of overfitting: instead of memorizing, the model hasn't learned enough. Usual causes: model too small, not enough training, or wrong architecture.

```
  Training accuracy: 55%   ← bad
  Test accuracy:     52%   ← also bad

  Data has a curve, but model fits a straight line:
  ┌─────────────────────────────┐
  │        · ·                  │
  │      ·     ·                │
  │    ·  ────────── ← underfit │  Underfit: too simple
  │  ·         (straight line)  │
  │ ·                           │
  │·     ╭──────╮ ← good fit   │  Good fit: matches the pattern
  └─────────────────────────────┘
```

**Examples:** [scikit-learn](https://github.com/scikit-learn/scikit-learn), [PyTorch](https://github.com/pytorch/pytorch), [Keras](https://github.com/keras-team/keras)
