# WTF is RAG?

Retrieval-Augmented Generation. Instead of relying only on what an LLM was trained on, you first search a knowledge base for relevant documents, then pass those documents to the LLM along with the question. The LLM generates an answer grounded in your actual data instead of making things up.

```
Without RAG:
  User: "What's our refund policy?"
  LLM:  "I don't know your specific policy" (or hallucinates one)

With RAG:
  User: "What's our refund policy?"
    │
    ├── 1. Search knowledge base → finds refund-policy.pdf
    │
    ├── 2. Send to LLM: "Based on this document: [refund-policy.pdf],
    │                     answer: What's our refund policy?"
    │
    └── 3. LLM: "You can request a refund within 30 days..." ← grounded answer
```

**Examples:** [ChatGPT with file uploads](https://openai.com/index/chatgpt/), [Perplexity](https://www.perplexity.ai/), any "chat with your docs" product
