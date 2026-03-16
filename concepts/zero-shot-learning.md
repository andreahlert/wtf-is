# WTF is Zero-Shot Learning?

Zero-shot learning is when a model performs a task it was never explicitly trained on and without any examples in the prompt. You just describe what you want and the model figures it out from its general training. It works because large models learn transferable concepts during pre-training.

```
  No examples given:
  ┌──────────────────────────────────────────┐
  │ "Classify this review as positive or     │
  │  negative: 'The food was terrible'"      │
  └──────────────────────────────────────────┘
  Output: "negative"   ← no examples needed
```

**Examples:** [CLIP](https://github.com/openai/CLIP), [Hugging Face Zero-Shot Classification](https://huggingface.co/tasks/zero-shot-classification), [DSPY](https://github.com/stanfordnlp/dspy)
