# WTF is a Recurrent Neural Network?

A recurrent neural network (RNN) processes sequences one step at a time, passing a hidden state from each step to the next. This hidden state acts as a memory of what came before. It was the go-to architecture for text and time series before transformers took over, but it struggles with long sequences because early information fades.

```
  Input:  x1      x2      x3      x4
          │       │       │       │
          ▼       ▼       ▼       ▼
  h0 ──► [RNN] ──► [RNN] ──► [RNN] ──► [RNN] ──► output
          h1       h2       h3       h4
          │        │        │        │
        (hidden state carries forward)
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [Keras](https://github.com/keras-team/keras)
