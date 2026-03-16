# WTF is a Vision Transformer?

A Vision Transformer (ViT) applies the transformer architecture to images by splitting an image into small patches and treating each patch like a token in a sequence. It then uses the same self-attention mechanism that works for text. This proved that transformers can match or beat CNNs for image tasks.

```
  Input image          Split into patches       Process as sequence
  ┌──────────┐        ┌──┬──┬──┬──┐
  │          │        │P1│P2│P3│P4│        [P1] [P2] [P3] ... [P16]
  │  (photo) │  ───►  ├──┼──┼──┼──┤  ───►        │
  │          │        │P5│P6│P7│P8│        ┌──────┴──────┐
  │          │        ├──┼──┼──┼──┤        │ Transformer │
  └──────────┘        │..│..│..│..│        │  Encoder    │
                      └──┴──┴──┴──┘        └──────┬──────┘
                                                  │
                                             classification
```

**Examples:** [ViT (Google)](https://github.com/google-research/vision_transformer), [timm](https://github.com/huggingface/pytorch-image-models), [DINOv2](https://github.com/facebookresearch/dinov2)
