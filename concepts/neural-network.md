# WTF is a Neural Network?

A neural network is a program that learns patterns by passing data through layers of connected nodes (neurons). Each connection has a weight that gets adjusted during training until the network produces useful outputs. It's loosely inspired by how brain neurons fire, but don't take the analogy too far.

```
Input Layer    Hidden Layers    Output Layer

  [x1] ──────►[h1]──────►[h3]──────►[y1]
       ╲    ╱      ╲    ╱
        ╲  ╱        ╲  ╱
         ╳           ╳
        ╱  ╲        ╱  ╲
       ╱    ╲      ╱    ╲
  [x2] ──────►[h2]──────►[h4]──────►[y2]
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [JAX](https://github.com/google/jax)
