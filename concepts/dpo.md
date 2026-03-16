# WTF is DPO?

DPO (Direct Preference Optimization) is a simpler alternative to RLHF that skips the reward model entirely. You give it pairs of "preferred" and "rejected" responses, and it directly adjusts the model weights to favor the preferred ones. Same goal as RLHF (align with human preferences) but with less complexity and fewer moving parts.

```
  RLHF (3 steps)                    DPO (1 step)
  ┌──────────┐  ┌────────┐  ┌───┐  ┌──────────┐
  │ Rank     │→ │ Reward │→ │RL │  │ Preferred│→ directly update
  │ outputs  │  │ Model  │  │   │  │ vs       │  model weights
  └──────────┘  └────────┘  └───┘  │ Rejected │
                                   └──────────┘
```

**Examples:** [TRL](https://github.com/huggingface/trl), [DPO Paper](https://arxiv.org/abs/2305.18290), [Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)
