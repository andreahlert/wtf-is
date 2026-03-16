# WTF is Semantic Segmentation?

Semantic segmentation classifies every single pixel in an image into a category. Unlike object detection (which draws boxes), segmentation produces a pixel-perfect mask showing exactly where each object is. "This pixel is road, this pixel is car, this pixel is sky."

```
  Input image                  Segmentation mask
  ┌──────────────────┐        ┌──────────────────┐
  │     ___          │        │ SSSSSSSSSSSSSSSSS│  S = sky
  │    /   \   sky   │  ───►  │ SSSS████SSSSSSSSS│  █ = tree
  │   | tree|        │        │ SSS██████SSSSSSSS│
  │    \___/         │        │ GGGGGGGGGGGGGGGG │  G = grass
  │  grass           │        │ GGGGGGGGGRRRRRRR │  R = road
  │         road     │        │ GGGGGGGRRRRRRRRR │
  └──────────────────┘        └──────────────────┘
```

**Examples:** [Segment Anything (SAM)](https://github.com/facebookresearch/segment-anything), [MMSegmentation](https://github.com/open-mmlab/mmsegmentation), [DeepLab](https://github.com/google-research/deeplab2)
