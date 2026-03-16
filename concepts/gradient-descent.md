# WTF is Gradient Descent?

Gradient descent is how neural networks learn. It calculates the slope (gradient) of the loss function with respect to each weight, then nudges the weights in the direction that reduces the loss. Repeat this thousands of times and the model gradually finds weights that produce good predictions.

```
  Loss
   │╲
   │ ╲
   │  ╲  ← gradient points downhill
   │   ╲
   │    ·  step 1
   │     ╲
   │      · step 2
   │       ╲
   │        · step 3 (minimum)
   └──────────────────── weights
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [JAX](https://github.com/google/jax)
