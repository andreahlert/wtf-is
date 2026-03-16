# WTF is KV Cache?

KV cache stores the key and value tensors from previous tokens so the model doesn't have to recompute them at every generation step. Without it, generating each new token would require re-processing the entire sequence. It trades memory for speed, and it's why long contexts eat so much GPU RAM.

```
  Without KV Cache               With KV Cache
  Step 3: process ALL tokens     Step 3: only process new token
  ┌─────────────────────┐       ┌─────────────────────┐
  │ "The" → compute K,V │       │ "The"  → cached K,V │
  │ "cat" → compute K,V │       │ "cat"  → cached K,V │
  │ "sat" → compute K,V │       │ "sat"  → compute K,V│ ← only this
  └─────────────────────┘       └─────────────────────┘
  Slow: O(n^2) total            Fast: O(n) per step
```

**Examples:** [vLLM](https://github.com/vllm-project/vllm), [llama.cpp](https://github.com/ggerganov/llama.cpp), [TensorRT-LLM](https://github.com/NVIDIA/TensorRT-LLM)
