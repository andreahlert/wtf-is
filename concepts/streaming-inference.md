# WTF is Streaming Inference?

Streaming inference sends model output to the client token by token as it's generated, instead of waiting for the full response. This is how ChatGPT shows words appearing one at a time. It reduces perceived latency because the user sees output immediately, even though total generation time is the same.

```
  Non-streaming                    Streaming (SSE/WebSocket)
  ┌─────────┐                      ┌─────────┐
  │ Request  │                      │ Request  │
  └────┬────┘                      └────┬────┘
       │  wait...                       │  "The" →
       │  wait...                       │  "cat" →
       │  wait...                       │  "sat" →
       ▼                                │  "on"  →
  "The cat sat on the mat"              │  "the" →
  (all at once)                         ▼  "mat" →
```

**Examples:** [OpenAI API Streaming](https://platform.openai.com/docs/api-reference/streaming), [vLLM](https://github.com/vllm-project/vllm), [Hugging Face TGI](https://github.com/huggingface/text-generation-inference)
