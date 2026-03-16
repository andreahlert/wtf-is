# WTF is Convolution (CNN)?

A convolution slides a small filter (kernel) across an image to detect local patterns like edges, textures, or shapes. Each filter learns to recognize a specific feature. Stacking convolutional layers lets the network build from simple edges up to complex objects. This is the core operation behind image recognition.

```
  Input image       3x3 Filter        Output (feature map)
  ┌─────────────┐   ┌───────┐        ┌───────────┐
  │ 1 0 1 0 1   │   │ 1 0 1 │        │ 4 3 4     │
  │ 0 1 0 1 0   │ * │ 0 1 0 │   =    │ 2 4 2     │
  │ 1 0 1 0 1   │   │ 1 0 1 │        │ 4 3 4     │
  │ 0 1 0 1 0   │   └───────┘        └───────────┘
  │ 1 0 1 0 1   │    slides across
  └─────────────┘    the image
```

**Examples:** [PyTorch](https://github.com/pytorch/pytorch), [TensorFlow](https://github.com/tensorflow/tensorflow), [OpenCV](https://github.com/opencv/opencv)
