# WTF is Multimodal AI?

Multimodal AI is a model that can understand and generate across multiple types of data: text, images, audio, video, or code. Instead of separate models for each modality, a single model processes them all together. You can show it an image and ask questions about it, or ask it to generate an image from text.

```
  ┌──────────────────────────┐
  │     Multimodal Model     │
  │                          │
  │  Image ──►┐              │
  │  Text  ──►├──► output    │
  │  Audio ──►┘   (any mode) │
  │                          │
  └──────────────────────────┘

  "What's in this photo?" + [photo] → "A cat on a keyboard"
```

**Examples:** [GPT-4V](https://openai.com/gpt-4), [Claude](https://www.anthropic.com/claude), [LLaVA](https://github.com/haotian-liu/LLaVA)
