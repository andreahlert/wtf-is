# WTF is CLIP?

CLIP (Contrastive Language-Image Pre-training) is a model that learns to connect images and text in a shared embedding space. It was trained on 400 million image-text pairs from the internet, learning which images match which descriptions. This lets it do zero-shot image classification, power image search, and guide image generation.

```
  ┌─────────────┐     ┌──────────────┐
  │ Image       │     │ Text         │
  │ Encoder     │     │ Encoder      │
  │ (ViT/ResNet)│     │ (Transformer)│
  └──────┬──────┘     └──────┬───────┘
         │                    │
         ▼                    ▼
  [image embedding]  [text embedding]
         │                    │
         └───── similarity ───┘
               score: 0.92
```

**Examples:** [CLIP](https://github.com/openai/CLIP), [open_clip](https://github.com/mlfoundations/open_clip), [clip-retrieval](https://github.com/rom1504/clip-retrieval)
