# WTF is BERT?

BERT (Bidirectional Encoder Representations from Transformers) is a pre-trained language model that reads text in both directions simultaneously. Unlike GPT (which reads left-to-right), BERT sees the full context around each word. It's designed for understanding tasks (classification, NER, Q&A) rather than text generation.

```
  GPT (left-to-right):      BERT (bidirectional):
  "The cat [MASK]"           "The cat [MASK] on the mat"
   ──────────►                ◄──────────────────►
   Only sees "The cat"        Sees full context both ways

  Pre-training task: guess the [MASK]ed word
  "The cat [MASK] on the mat" → "sat"
```

**Examples:** [BERT](https://github.com/google-research/bert), [Hugging Face Transformers](https://github.com/huggingface/transformers), [RoBERTa](https://github.com/facebookresearch/fairseq)
