# WTF is Top-P (Nucleus Sampling)?

Top-P (nucleus sampling) limits token selection to the smallest set of tokens whose cumulative probability exceeds P. If P=0.9, the model only considers tokens that together cover 90% of the probability mass, ignoring the long tail of unlikely tokens. It's an alternative to temperature for controlling randomness.

```
  Token probabilities (sorted):
  ┌────────────────────────────────────┐
  │ "blue"   0.50  ──┐                │
  │ "clear"  0.25  ──┤ sum = 0.90     │  ← Top-P=0.9 picks from these
  │ "vast"   0.15  ──┘                │
  │ "pink"   0.07    ╳ excluded       │
  │ "green"  0.03    ╳ excluded       │
  └────────────────────────────────────┘
```

**Examples:** [OpenAI API](https://platform.openai.com/docs/api-reference), [vLLM](https://github.com/vllm-project/vllm), [Hugging Face Text Generation](https://github.com/huggingface/text-generation-inference)
