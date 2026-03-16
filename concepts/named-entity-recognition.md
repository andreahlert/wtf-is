# WTF is Named Entity Recognition?

Named Entity Recognition (NER) identifies and classifies named entities in text into categories like person, organization, location, date, or amount. It's the task of finding "who, what, where, when" in unstructured text. It's a fundamental building block for information extraction.

```
  Input:  "Tim Cook announced Apple's new office in Austin on Monday."

  Output:
  ┌──────────┬──────────┬────────┬────────┐
  │ Tim Cook │ Apple    │ Austin │ Monday │
  │ PERSON   │ ORG      │ LOC    │ DATE   │
  └──────────┴──────────┴────────┴────────┘
```

**Examples:** [spaCy](https://github.com/explosion/spaCy), [Flair](https://github.com/flairNLP/flair), [Hugging Face Token Classification](https://huggingface.co/tasks/token-classification)
