# WTF is an Activation Function?

An activation function adds non-linearity to a neural network. Without it, stacking layers would just be multiplying matrices, which can only learn linear relationships. The activation function applied after each layer lets the network learn complex, non-linear patterns. ReLU (output the value if positive, 0 otherwise) is the most common.

```
  Common activation functions:

  ReLU              Sigmoid            Tanh
  y│    /           y│   ___           y│   ___
   │   /             │  /              │  /
   │  /              │ /               │ /
   │ /               │/             ───┤/
  ─┼──── x          ─┼──── x         ─┼──── x
   │                  │                │
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [JAX](https://github.com/google/jax)
