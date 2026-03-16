# WTF is Model Distillation?

Model distillation trains a small "student" model to mimic the outputs of a large "teacher" model. The student learns from the teacher's probability distributions (soft labels), not just the correct answers, which transfers more nuanced knowledge. You get a much smaller model that performs surprisingly close to the original.

```
  Teacher (70B params)          Student (7B params)
  ┌──────────────────┐          ┌──────────────┐
  │ Input → [0.7,    │  train   │ Input → learn│
  │  0.2, 0.1]       │ ───────► │ to match     │
  │ (soft labels)     │          │ teacher's    │
  └──────────────────┘          │ outputs      │
                                └──────────────┘
```

**Examples:** [DistilBERT](https://github.com/huggingface/transformers), [TinyLlama](https://github.com/jzhang38/TinyLlama), [Knowledge Distillation Toolkit](https://github.com/airaria/TextBrewer)
