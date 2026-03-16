# WTF is RLHF?

RLHF (Reinforcement Learning from Human Feedback) is a training technique where humans rank model outputs, and those rankings train a reward model, which then guides the LLM to produce responses humans prefer. It's how models go from "predicts next token" to "gives helpful, harmless answers." This is what made ChatGPT feel useful.

```
  Step 1: Humans rank outputs     Step 2: Train reward model    Step 3: RL
  ┌────────────┐                  ┌──────────┐                 ┌─────────┐
  │ Response A │ ← better         │ Learns   │                 │ LLM     │
  │ Response B │ ← worse    ───►  │ what     │  ───►           │ optimizes│
  │ Response C │ ← worst          │ "good"is │                 │ for reward│
  └────────────┘                  └──────────┘                 └─────────┘
```

**Examples:** [TRL](https://github.com/huggingface/trl), [OpenRLHF](https://github.com/OpenRLHF/OpenRLHF), [DeepSpeed-Chat](https://github.com/microsoft/DeepSpeed)
