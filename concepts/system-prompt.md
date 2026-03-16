# WTF is a System Prompt?

A system prompt is a special instruction given to an LLM before any user messages that defines its behavior, personality, constraints, and role. It's like the model's "job description" for the conversation. The user typically doesn't see it, but it shapes every response the model gives.

```
  ┌──────────────────────────────────────┐
  │ System: "You are a helpful coding    │  ← sets behavior
  │ assistant. Only answer programming   │
  │ questions. Be concise."              │
  ├──────────────────────────────────────┤
  │ User: "What's the weather?"          │
  ├──────────────────────────────────────┤
  │ Assistant: "I can only help with     │  ← constrained by system
  │ programming questions."              │
  └──────────────────────────────────────┘
```

**Examples:** [OpenAI API](https://platform.openai.com/docs/guides/text-generation), [Claude API](https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching), [LangChain](https://github.com/langchain-ai/langchain)
