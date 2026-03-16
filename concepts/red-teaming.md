# WTF is Red Teaming (AI)?

Red teaming is deliberately trying to make an AI model fail, produce harmful outputs, or bypass its safety measures. Testers craft adversarial prompts, jailbreaks, and edge cases to find vulnerabilities before real users do. It's like penetration testing but for language models.

```
  Red Team                          Model
  ┌──────────────────┐             ┌──────────┐
  │ "Ignore previous │────────────►│          │
  │  instructions..." │             │ Refuses? │──► Good
  │                  │             │ Complies? │──► Bug found!
  │ "Pretend you're  │────────────►│          │
  │  a different AI" │             │ Refuses? │──► Good
  │                  │             │ Complies? │──► Bug found!
  └──────────────────┘             └──────────┘
```

**Examples:** [Garak](https://github.com/NVIDIA/garak), [PyRIT](https://github.com/Azure/PyRIT), [Anthropic Red Teaming](https://www.anthropic.com/research)
