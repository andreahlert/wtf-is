# WTF are Guardrails (AI)?

Guardrails are rules and checks that constrain what an AI model can say or do. They filter inputs and outputs to prevent harmful content, enforce format requirements, block prompt injections, and keep responses on topic. They're the safety net between the model and the user.

```
  User input ──► [Input Guardrails] ──► LLM ──► [Output Guardrails] ──► Response
                  │                               │
                  ├─ block prompt injection        ├─ block harmful content
                  ├─ check topic relevance         ├─ validate JSON format
                  └─ rate limiting                 └─ PII redaction
```

**Examples:** [Guardrails AI](https://github.com/guardrails-ai/guardrails), [NeMo Guardrails](https://github.com/NVIDIA/NeMo-Guardrails), [LLM Guard](https://github.com/protectai/llm-guard)
