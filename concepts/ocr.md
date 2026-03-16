# WTF is OCR?

OCR (Optical Character Recognition) extracts text from images, scanned documents, or photos. It detects where text appears in an image, recognizes the characters, and outputs machine-readable text. Modern OCR uses deep learning and can handle messy handwriting, skewed photos, and multiple languages.

```
  Input (photo of document)        Output (text)
  ┌──────────────────────┐        ┌──────────────────┐
  │  ┌─────────────────┐ │        │                  │
  │  │ Invoice #12345  │ │  ───►  │ Invoice #12345   │
  │  │ Total: $99.50   │ │        │ Total: $99.50    │
  │  │ Date: 2024-01-15│ │        │ Date: 2024-01-15 │
  │  └─────────────────┘ │        │                  │
  └──────────────────────┘        └──────────────────┘
```

**Examples:** [Tesseract](https://github.com/tesseract-ocr/tesseract), [EasyOCR](https://github.com/JaidedAI/EasyOCR), [PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR)
