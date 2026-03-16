# WTF is Few-Shot Learning?

Few-shot learning is giving a model a handful of examples in the prompt so it understands what you want, without any retraining. You show it 2-5 input/output pairs, then give it a new input and let it follow the pattern. It works because LLMs are good at pattern matching from context.

```
  Prompt:
  ┌──────────────────────────────────────┐
  │ "Paris → France"       (example 1)   │
  │ "Tokyo → Japan"        (example 2)   │
  │ "Berlin → ???"         (your query)  │
  └──────────────────────────────────────┘
  Output: "Germany"
```

**Examples:** [OpenAI API](https://platform.openai.com/docs/guides/prompt-engineering), [GPT-3 Paper](https://arxiv.org/abs/2005.14165), [DSPY](https://github.com/stanfordnlp/dspy)
