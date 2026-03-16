# WTF is Function Calling (AI)?

Function calling is a structured way for LLMs to invoke external functions. You define available functions with their parameters as a JSON schema, and the model outputs a structured function call (name + arguments) instead of plain text. Your code executes the function and feeds the result back. It's tool use with a standardized contract.

```
  Available functions:
  ┌──────────────────────────────────┐
  │ get_weather(city: str) → str     │
  │ send_email(to: str, body: str)   │
  └──────────────────────────────────┘

  User: "Email bob@co.com saying hi"

  LLM output (structured):
  {
    "name": "send_email",
    "args": {"to": "bob@co.com", "body": "hi"}
  }
```

**Examples:** [OpenAI Function Calling](https://platform.openai.com/docs/guides/function-calling), [Claude Tool Use](https://docs.anthropic.com/en/docs/build-with-claude/tool-use), [Gorilla](https://github.com/ShishirPatil/gorilla)
