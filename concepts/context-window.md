# WTF is a Context Window?

The context window is the maximum number of tokens an LLM can process at once, including both the input and the output. If your prompt plus the generated response exceeds this limit, the model literally cannot see the overflow. Bigger context windows let you feed more information but cost more compute.

```
  ◄──────────── Context Window (e.g. 128K tokens) ────────────►
  ┌────────────────────────────┬───────────────────────────────┐
  │        Your Prompt         │       Model's Response        │
  │     (system + user msg)    │      (generated tokens)       │
  └────────────────────────────┴───────────────────────────────┘
  Token 0                                              Token 128,000
```

**Examples:** [Claude](https://www.anthropic.com/claude), [GPT-4](https://openai.com/gpt-4), [Gemini](https://deepmind.google/technologies/gemini/)
