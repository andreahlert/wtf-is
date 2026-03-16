# WTF is QLoRA?

QLoRA combines quantization with LoRA: it loads the base model in 4-bit precision (using much less memory) while training the small LoRA adapter weights in full precision. This lets you fine-tune a 65B parameter model on a single 48GB GPU, which would normally require multiple high-end GPUs.

```
  Regular Fine-tuning     LoRA              QLoRA
  ┌────────────────┐    ┌──────────────┐   ┌──────────────┐
  │ Full model     │    │ Model (16-bit)│   │ Model (4-bit)│  ← 4x smaller
  │ 16-bit, all    │    │ + small LoRA │   │ + small LoRA │
  │ params trained │    │ adapters     │   │ adapters     │
  │ GPU: 780GB     │    │ GPU: 100GB   │   │ GPU: 24GB    │
  └────────────────┘    └──────────────┘   └──────────────┘
```

**Examples:** [bitsandbytes](https://github.com/TimDettmers/bitsandbytes), [PEFT](https://github.com/huggingface/peft), [QLoRA Paper](https://arxiv.org/abs/2305.14314)
