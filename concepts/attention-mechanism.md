# WTF is an Attention Mechanism?

Attention lets a model decide which parts of the input matter most when producing each part of the output. Instead of compressing everything into a single fixed-size representation, it scores how relevant each input element is to the current step. This is the core idea behind transformers.

```
  "The cat sat on the ___"

  Attention scores for predicting "mat":
  ┌─────┬─────┬─────┬─────┬─────┐
  │ The │ cat │ sat │ on  │ the │
  │ 0.1 │ 0.2 │ 0.4 │ 0.2 │ 0.1 │  ← "sat" gets highest weight
  └─────┴─────┴─────┴─────┴─────┘
```

**Examples:** [Hugging Face Transformers](https://github.com/huggingface/transformers), [BertViz](https://github.com/jessevig/bertviz), [Attention Is All You Need (paper)](https://arxiv.org/abs/1706.03762)
