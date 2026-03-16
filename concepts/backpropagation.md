# WTF is Backpropagation?

Backpropagation is the algorithm that calculates how much each weight in a neural network contributed to the error. It works backward from the output layer to the input layer using the chain rule of calculus, computing gradients for every weight. Those gradients then feed into gradient descent to update the weights.

```
  Forward pass (compute output):
  Input ──► [Layer 1] ──► [Layer 2] ──► [Layer 3] ──► Loss = 0.8

  Backward pass (compute gradients):
  Input ◄── [Layer 1] ◄── [Layer 2] ◄── [Layer 3] ◄── dLoss
            dw1=0.02      dw2=0.05      dw3=0.11

  Update: w = w - learning_rate * gradient
```

**Examples:** [PyTorch Autograd](https://github.com/pytorch/pytorch), [TensorFlow GradientTape](https://github.com/tensorflow/tensorflow), [micrograd](https://github.com/karpathy/micrograd)
