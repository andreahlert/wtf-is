# WTF is a Tokenizer?

A tokenizer splits text into smaller pieces (tokens) that a model can process. Tokens aren't always full words; they can be subwords, characters, or byte pairs. The model only sees numbers (token IDs), so the tokenizer is the translation layer between human text and model input.

```
  "unhappiness"
       │
       ▼ (tokenize)
  ["un", "happiness"]
       │
       ▼ (to IDs)
  [4521, 18293]
```

**Examples:** [tiktoken](https://github.com/openai/tiktoken), [SentencePiece](https://github.com/google/sentencepiece), [HF Tokenizers](https://github.com/huggingface/tokenizers)
