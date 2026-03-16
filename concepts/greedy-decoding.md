# WTF is Greedy Decoding?

Greedy decoding picks the single most probable token at each step. It's the simplest and fastest decoding strategy, but it can miss better sequences because it never backtracks. Choosing the best word at each step doesn't guarantee the best sentence overall.

```
  Step 1         Step 2           Step 3
  "The" ──► pick top token ──► pick top token ──► ...
              "cat" (0.6)        "sat" (0.7)
              dog   (0.3)  ╳     ran   (0.2)  ╳
              bird  (0.1)  ╳     slept (0.1)  ╳
```

**Examples:** [Hugging Face Transformers](https://github.com/huggingface/transformers), [llama.cpp](https://github.com/ggerganov/llama.cpp), [vLLM](https://github.com/vllm-project/vllm)
