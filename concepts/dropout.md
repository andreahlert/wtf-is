# WTF is Dropout?

Dropout is a regularization technique that randomly turns off a percentage of neurons during each training step. This forces the network to not rely on any single neuron and learn redundant representations. At inference time, all neurons are active. It's surprisingly simple and effective at preventing overfitting.

```
  Training (dropout=0.5)            Inference
  ┌───────────────────┐            ┌───────────────────┐
  │ [x1]──►[h1]  [y] │            │ [x1]──►[h1]──►[y] │
  │     ╲   ╳   ╱    │            │     ╲  ╱  ╲  ╱    │
  │      ╲     ╱     │            │      ╲╱    ╲╱     │
  │ [x2]  [h2]──►    │            │ [x2]──►[h2]──►    │
  │     ╲  ╱╳        │            │     ╲  ╱  ╲       │
  │ [x3]──►[h3]  ╳   │            │ [x3]──►[h3]──►    │
  └───────────────────┘            └───────────────────┘
       ╳ = dropped out                all neurons active
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [Keras](https://github.com/keras-team/keras)
