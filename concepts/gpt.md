# WTF is GPT?

GPT (Generative Pre-trained Transformer) is a family of language models that generate text by predicting one token at a time, left to right. It's pre-trained on massive text data, then fine-tuned or prompted for specific tasks. GPT proved that scaling up a simple "predict the next word" objective produces remarkably capable models.

```
  GPT generates left-to-right:

  "The"
  "The cat"
  "The cat sat"
  "The cat sat on"
  "The cat sat on the"
  "The cat sat on the mat"

  Each step: P(next token | all previous tokens)
```

**Examples:** [GPT-4](https://openai.com/gpt-4), [nanoGPT](https://github.com/karpathy/nanoGPT), [GPT-NeoX](https://github.com/EleutherAI/gpt-neox)
