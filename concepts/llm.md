# WTF is an LLM?

An LLM (Large Language Model) is a transformer-based model trained on massive amounts of text to predict the next token. Because it has billions of parameters and has seen enormous data, it can generate coherent text, answer questions, write code, and more. "Large" means billions of parameters and terabytes of training data.

```
  Prompt: "Explain gravity"
         │
         ▼
  ┌──────────────┐
  │     LLM      │  billions of parameters
  │  (Transformer │  trained on internet text
  │   + weights)  │
  └──────┬───────┘
         │
         ▼
  "Gravity is a force that..."  (token by token)
```

**Examples:** [LLaMA](https://github.com/meta-llama/llama), [Mistral](https://github.com/mistralai/mistral-inference), [GPT-4](https://openai.com/gpt-4)
