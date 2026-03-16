# WTF is Object Detection?

Object detection finds and localizes objects within an image, drawing bounding boxes around them and classifying what each one is. Unlike image classification (which just says "this image has a cat"), object detection says "there's a cat at position (x, y) with width w and height h."

```
  Input image                  Output
  ┌──────────────────┐        ┌──────────────────┐
  │                  │        │ ┌──────┐         │
  │   (cat)  (dog)   │  ───►  │ │ cat  │ ┌─────┐│
  │                  │        │ │ 0.95 │ │ dog ││
  │          (ball)  │        │ └──────┘ │0.89 ││
  │                  │        │          └─────┘│
  └──────────────────┘        │     ┌──────┐    │
                              │     │ball  │    │
                              │     │ 0.91 │    │
                              │     └──────┘    │
                              └──────────────────┘
```

**Examples:** [YOLO (Ultralytics)](https://github.com/ultralytics/ultralytics), [Detectron2](https://github.com/facebookresearch/detectron2), [MMDetection](https://github.com/open-mmlab/mmdetection)
