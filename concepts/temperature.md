# WTF is Temperature (LLM)?

Temperature controls how random an LLM's output is. At temperature 0, the model always picks the most likely next token (deterministic). At higher temperatures, less likely tokens get a better chance of being picked, making output more creative but also more unpredictable.

```
  Next token probabilities for "The sky is ___":

  Temp=0 (focused)         Temp=1.5 (creative)
  ┌──────────┐             ┌──────────┐
  │ blue  95%│             │ blue  40%│
  │ clear  4%│             │ clear 25%│
  │ vast   1%│             │ vast  20%│
  │ pink   0%│             │ pink  15%│
  └──────────┘             └──────────┘
```

**Examples:** [OpenAI API](https://platform.openai.com/docs/api-reference), [llama.cpp](https://github.com/ggerganov/llama.cpp), [Ollama](https://github.com/ollama/ollama)
