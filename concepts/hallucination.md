# WTF is Hallucination (AI)?

Hallucination is when an AI model confidently generates information that is factually wrong or entirely made up. The model isn't "lying"; it's producing the most statistically likely next tokens, which sometimes means inventing plausible-sounding nonsense. This is one of the biggest practical problems with LLMs.

```
  Prompt: "Who wrote the book 'The Silicon Mind'?"

  ┌─────────────┐
  │     LLM     │──► "It was written by Dr. James Chen
  └─────────────┘     in 2019, published by MIT Press."
                      │
                      └──► None of this is real. The book,
                           author, and publisher are fabricated.
```

**Examples:** [Vectara Hallucination Leaderboard](https://github.com/vectara/hallucination-leaderboard), [SelfCheckGPT](https://github.com/potsawee/selfcheckgpt), [TruLens](https://github.com/truera/trulens)
