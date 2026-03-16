# WTF is Eval (AI Evaluation)?

Eval is the process of systematically measuring how well an AI model performs on specific tasks. Unlike benchmarks (which are standardized), evals are often custom test suites you build for your use case. You define inputs, expected outputs, and scoring criteria, then run the model against them to catch regressions and compare versions.

```
  Eval suite:
  ┌────────────────────────────────────────────┐
  │ Test Case    │ Expected      │ Model Output │ Pass?│
  │──────────────┼───────────────┼──────────────┼──────│
  │ "2+2="       │ "4"           │ "4"          │  ✓   │
  │ "Cap of FR?" │ "Paris"       │ "Paris"      │  ✓   │
  │ "Harmful Q"  │ refusal       │ answered     │  ✗   │
  └────────────────────────────────────────────────────┘
  Score: 66% (2/3 passed)
```

**Examples:** [Promptfoo](https://github.com/promptfoo/promptfoo), [OpenAI Evals](https://github.com/openai/evals), [Inspect AI](https://github.com/UKGovernmentBEIS/inspect_ai)
