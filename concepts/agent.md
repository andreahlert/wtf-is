# WTF is an AI Agent?

An AI agent is an LLM that can take actions in the real world, not just generate text. It has a loop: observe the situation, decide what to do, use tools (search, run code, call APIs), observe the result, and repeat until the task is done. The LLM acts as the "brain" that plans and reasons, while tools are its "hands."

```
  ┌──────────────────────────────────┐
  │           Agent Loop             │
  │                                  │
  │  Observe ──► Think ──► Act ──┐   │
  │     ▲                        │   │
  │     └────── Result ◄─────────┘   │
  │                                  │
  │  Tools: [search] [code] [api]    │
  └──────────────────────────────────┘
```

**Examples:** [LangChain Agents](https://github.com/langchain-ai/langchain), [AutoGPT](https://github.com/Significant-Gravitas/AutoGPT), [CrewAI](https://github.com/crewAIInc/crewAI)
