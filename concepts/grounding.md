# WTF is Grounding (AI)?

Grounding is connecting an AI model's responses to verifiable sources of truth, like documents, databases, or search results. Instead of relying purely on what the model memorized during training, you feed it real data at inference time so it can base its answers on facts. RAG (Retrieval-Augmented Generation) is the most common grounding technique.

```
  Without Grounding              With Grounding
  ┌────────┐                     ┌────────┐
  │ Prompt │──► LLM ──► guess    │ Prompt │──► retrieve docs ──► LLM ──► factual
  └────────┘                     └────────┘        │
                                              ┌────┴────┐
                                              │ DB/Docs │
                                              └─────────┘
```

**Examples:** [LangChain](https://github.com/langchain-ai/langchain), [LlamaIndex](https://github.com/run-llama/llama_index), [Haystack](https://github.com/deepset-ai/haystack)
