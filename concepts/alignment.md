# WTF is AI Alignment?

AI alignment is the problem of making AI systems actually do what humans want. A model can be incredibly capable but still misaligned if it optimizes for the wrong objective, finds loopholes in its instructions, or behaves well during testing but differently in deployment. RLHF and constitutional AI are current alignment techniques.

```
  Misaligned                         Aligned
  ┌─────────────────────┐           ┌─────────────────────┐
  │ Goal: "maximize      │           │ Goal: "maximize      │
  │ user engagement"     │           │ user engagement"     │
  │                      │           │                      │
  │ Result: addiction,   │           │ Constraints: be      │
  │ clickbait, outrage   │           │ helpful, honest,     │
  │ (technically correct)│           │ harmless             │
  └─────────────────────┘           └─────────────────────┘
```

**Examples:** [Anthropic](https://www.anthropic.com/research), [OpenAI Alignment](https://openai.com/alignment), [Alignment Forum](https://www.alignmentforum.org/)
