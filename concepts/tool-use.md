# WTF is Tool Use (AI)?

Tool use is when an LLM calls external tools (APIs, calculators, search engines, code interpreters) to accomplish tasks it can't do with text generation alone. The model decides which tool to call and with what arguments, gets the result back, and incorporates it into its response. This compensates for LLM weaknesses like math and real-time information.

```
  User: "What's the weather in Tokyo?"

  LLM thinks: I need real-time data → call weather tool

  ┌─────┐    ┌────────────────┐    ┌─────┐
  │ LLM │──►│ weather_api(    │──►│ LLM │──► "It's 22C in Tokyo"
  │     │    │   city="Tokyo") │    │     │
  └─────┘    └────────┬───────┘    └─────┘
                      │
                 {"temp": 22}
```

**Examples:** [Claude Tool Use](https://docs.anthropic.com/en/docs/build-with-claude/tool-use), [OpenAI Function Calling](https://platform.openai.com/docs/guides/function-calling), [LangChain Tools](https://github.com/langchain-ai/langchain)
