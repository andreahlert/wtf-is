# WTF is Fine-tuning vs Prompting?

**Prompting:** telling the model what to do in the input message. No training, just instructions. Quick, cheap, flexible. Works for most use cases.

**Fine-tuning:** training the model on your specific data so it learns new behavior permanently. Expensive, slow, but the model "just knows" without needing instructions every time. Use it when prompting isn't enough (specific tone, domain knowledge, structured output format).

```
Prompting:
  "You are a legal assistant. Always cite case law.
   Respond formally. Here's the question: ..."
  → works, but you repeat instructions every time
  → model may drift or ignore instructions

Fine-tuning:
  Training data: 10,000 examples of ideal legal responses
  → model learns the style permanently
  → no instructions needed, it "just knows"

When to use what:
  Start here ──→ Prompting (90% of cases)
       │
  Not good enough?
       │
       ├── Add examples (few-shot prompting)
       │
  Still not enough?
       │
       └── Fine-tune
```

**Examples:** OpenAI fine-tuning API, LoRA/QLoRA for open models, Hugging Face PEFT
