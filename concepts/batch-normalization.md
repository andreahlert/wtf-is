# WTF is Batch Normalization?

Batch normalization normalizes the inputs to each layer so they have a mean of 0 and a standard deviation of 1 across the current batch. This stabilizes training, allows higher learning rates, and helps the model converge faster. It's applied between layers and has become a standard building block in deep networks.

```
  Without BatchNorm              With BatchNorm
  Layer inputs drift wildly      Layer inputs stay normalized

  Layer 3 input: [150, -80, 42]  Layer 3 input: [0.8, -1.2, 0.4]
                                        │
                                 ┌──────┴──────┐
                                 │ Normalize:   │
                                 │ mean=0, std=1│
                                 │ Then scale   │
                                 │ and shift    │
                                 └──────────────┘
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [Keras](https://github.com/keras-team/keras)
