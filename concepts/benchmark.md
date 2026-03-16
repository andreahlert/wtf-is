# WTF is an ML Benchmark?

An ML benchmark is a standardized test for measuring and comparing model performance. It consists of a dataset, a task, and evaluation metrics that everyone agrees on. Without benchmarks, claims like "our model is better" would be meaningless. Common benchmarks test math, coding, reasoning, and general knowledge.

```
  Benchmark: MMLU (Massive Multitask Language Understanding)
  ┌───────────────────────────────────────────┐
  │ 57 subjects, 15K questions                │
  │                                           │
  │ Model          │ Score                    │
  │ ───────────────┼───────                   │
  │ GPT-4          │ 86.4%                    │
  │ Claude 3       │ 86.8%                    │
  │ LLaMA 70B      │ 79.3%                    │
  │ Random guess   │ 25.0%                    │
  └───────────────────────────────────────────┘
```

**Examples:** [LMSYS Chatbot Arena](https://github.com/lm-sys/FastChat), [OpenLLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard), [BIG-bench](https://github.com/google/BIG-bench)
