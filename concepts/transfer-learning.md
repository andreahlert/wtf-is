# WTF is Transfer Learning?

Transfer learning is taking a model trained on one task and reusing it for a different task. Instead of training from scratch, you start with a pre-trained model that already understands general patterns, then fine-tune it on your specific data. This saves enormous amounts of time, data, and compute.

```
  Traditional               Transfer Learning
  ┌────────┐                ┌────────────────┐
  │ Random │──train──►task  │ Pre-trained on │──fine-tune──►your task
  │ weights│   (slow)       │ ImageNet/text  │   (fast, less data)
  └────────┘                └────────────────┘
```

**Examples:** [Hugging Face Transformers](https://github.com/huggingface/transformers), [torchvision](https://github.com/pytorch/vision), [FastAI](https://github.com/fastai/fastai)
