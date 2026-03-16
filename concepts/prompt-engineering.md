# WTF is Prompt Engineering?

Prompt engineering is the practice of crafting inputs to get better outputs from LLMs. Small changes in wording, structure, or examples can dramatically change the quality of responses. It includes techniques like few-shot examples, chain-of-thought reasoning, and role-setting. It's how you steer a model without retraining it.

```
  Bad prompt:                    Good prompt:
  "Summarize this."              "You are a technical writer.
                                  Summarize this article in
  → vague, generic output        3 bullet points for a
                                  developer audience.
                                  Article: ..."

                                  → focused, useful output
```

**Examples:** [DSPY](https://github.com/stanfordnlp/dspy), [Promptfoo](https://github.com/promptfoo/promptfoo), [LangChain](https://github.com/langchain-ai/langchain)
