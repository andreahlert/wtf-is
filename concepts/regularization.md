# WTF is Regularization?

Regularization is any technique that prevents a model from overfitting by penalizing complexity. The most common forms add a penalty term to the loss function that discourages large weights (L1 makes weights sparse, L2 keeps weights small). It forces the model to find simpler solutions that generalize better.

```
  Without Regularization          With Regularization
  Loss = prediction error         Loss = prediction error + penalty

  Minimize: L(y, y')              Minimize: L(y, y') + λ·||w||²
                                                        ↑
                                              penalty for large weights

  Result: complex, overfit        Result: simpler, generalizes
```

**Examples:** [scikit-learn](https://github.com/scikit-learn/scikit-learn), [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow)
