# WTF is Speculative Decoding?

Speculative decoding speeds up LLM inference by using a small, fast "draft" model to guess several tokens ahead, then having the large model verify those guesses in one pass. Since the large model can check multiple tokens in parallel (but can only generate one at a time), this is much faster when the draft model guesses correctly.

```
  Draft model (fast, small)         Main model (slow, accurate)
  ┌─────────────────────┐          ┌───────────────────────────┐
  │ Generate 5 tokens:  │          │ Verify all 5 at once:     │
  │ "The cat sat on the"│ ───────► │ ✓ ✓ ✓ ✓ ✓  (all correct) │
  └─────────────────────┘          └───────────────────────────┘
                                   Result: 5 tokens in 1 forward pass
```

**Examples:** [vLLM](https://github.com/vllm-project/vllm), [llama.cpp](https://github.com/ggerganov/llama.cpp), [Medusa](https://github.com/FasterDecoding/Medusa)
