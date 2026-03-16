# WTF is a Loss Function?

A loss function measures how wrong the model's predictions are compared to the actual answers. The model's entire goal during training is to minimize this number. Different tasks use different loss functions: cross-entropy for classification, mean squared error for regression, etc.

```
  Model predicts: 0.8 (80% chance of "cat")
  Actual label:   1.0 (it IS a cat)

  Loss = -log(0.8) = 0.22   ← small loss, good prediction

  Model predicts: 0.2 (20% chance of "cat")
  Actual label:   1.0 (it IS a cat)

  Loss = -log(0.2) = 1.61   ← big loss, bad prediction
```

**Examples:** [PyTorch Loss Functions](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [scikit-learn](https://github.com/scikit-learn/scikit-learn)
