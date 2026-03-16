# WTF is a Transformer?

A transformer is a neural network architecture that processes all parts of its input simultaneously (not one by one) using attention to figure out which parts relate to each other. It replaced older sequential models and is the backbone of GPT, BERT, and basically every modern language model.

```
  Input: "The cat sat on the mat"

  ┌─────────────────────────────┐
  │  Tokenize + Embed           │
  ├─────────────────────────────┤
  │  Self-Attention (x N)       │  ← each word looks at every other word
  │  + Feed Forward (x N)       │
  ├─────────────────────────────┤
  │  Output Probabilities       │
  └─────────────────────────────┘
```

**Examples:** [Hugging Face Transformers](https://github.com/huggingface/transformers), [minGPT](https://github.com/karpathy/minGPT), [nanoGPT](https://github.com/karpathy/nanoGPT)
