# WTF is Overfitting?

Overfitting is when a model memorizes the training data instead of learning general patterns. It performs great on training data but fails on new, unseen data. It's like a student who memorizes exam answers without understanding the subject; change the questions slightly and they're lost.

```
  Training accuracy: 99.5%  ← looks great
  Test accuracy:     62.0%  ← actually terrible

  ┌─────────────────────────────┐
  │  ·  ·                       │
  │ · ╭─╮·╭╮  ← overfitted     │  Overfitted: wiggles through
  │╭╯ ╰─╯╰╯╰╮   (memorized)   │  every training point
  │·         ·                  │
  │   ────────── ← good fit    │  Good fit: smooth curve that
  └─────────────────────────────┘  generalizes
```

**Examples:** [scikit-learn](https://github.com/scikit-learn/scikit-learn), [PyTorch](https://github.com/pytorch/pytorch), [Keras](https://github.com/keras-team/keras)
