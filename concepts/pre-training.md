# WTF is Pre-Training?

Pre-training is the first phase of training a model on a massive, general-purpose dataset before specializing it for any specific task. For LLMs, this usually means predicting the next word on terabytes of internet text. It's the expensive part, often costing millions of dollars in compute, and it gives the model its general knowledge.

```
  Phase 1: Pre-training              Phase 2: Fine-tuning
  ┌──────────────────────┐           ┌──────────────────────┐
  │ Train on all of the  │           │ Train on your small  │
  │ internet (TB of text)│──────────►│ specific dataset     │
  │ Cost: $$$$$          │           │ Cost: $              │
  └──────────────────────┘           └──────────────────────┘
```

**Examples:** [LLaMA](https://github.com/meta-llama/llama), [BERT](https://github.com/google-research/bert), [GPT-NeoX](https://github.com/EleutherAI/gpt-neox)
