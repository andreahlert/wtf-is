# WTF is LoRA?

LoRA (Low-Rank Adaptation) is a fine-tuning technique that freezes the original model weights and injects small trainable matrices into each layer. Instead of updating billions of parameters, you only train a tiny fraction (often <1%), which makes fine-tuning feasible on consumer GPUs. The adapted weights can be swapped in and out like plugins.

```
  Original weight matrix W (frozen)
  ┌───────────────┐
  │               │   Instead of updating W directly,
  │   W (frozen)  │   add two small matrices:
  │               │
  └───────┬───────┘   W' = W + (A × B)
          │
    ┌─────┴─────┐     A: [d × r]  ← r is tiny (4-64)
    │  A  │  B  │     B: [r × d]
    │(small)(small)│   Only A and B are trained
    └───────────┘
```

**Examples:** [PEFT](https://github.com/huggingface/peft), [LoRA Paper](https://arxiv.org/abs/2106.09685), [Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)
