# WTF is Chain of Thought?

Chain of thought (CoT) is a prompting technique where you ask the model to show its reasoning step by step before giving a final answer. This dramatically improves accuracy on math, logic, and multi-step problems because the model "thinks out loud" instead of jumping to conclusions.

```
  Without CoT                    With CoT
  Q: "15% of 80?"               Q: "15% of 80? Think step by step."
  A: "15"  ✗                     A: "15% = 0.15
                                     0.15 × 80 = 12
                                     Answer: 12"  ✓
```

**Examples:** [OpenAI o1](https://openai.com/o1), [Claude](https://www.anthropic.com/claude), [LangChain](https://github.com/langchain-ai/langchain)
