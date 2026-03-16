# WTF is Mixture of Experts?

Mixture of Experts (MoE) is an architecture where the model has many "expert" sub-networks but only activates a few of them for each input. A router network decides which experts handle each token. This lets you have a huge model (more total parameters) while only using a fraction of the compute per inference.

```
  Input token
       │
       ▼
  ┌─────────┐
  │  Router  │ ── picks top 2 experts
  └────┬────┘
       │
  ┌────┼──────────────────────┐
  │    │                      │
  ▼    ▼                      ▼
 [E1] [E2]  [E3]  [E4] ... [E64]    ← only E1, E2 run
  │    │
  └──┬─┘
     ▼
  Combined output
```

**Examples:** [Mixtral](https://github.com/mistralai/mistral-inference), [Switch Transformer](https://arxiv.org/abs/2101.03961), [DeepSpeed-MoE](https://github.com/microsoft/DeepSpeed)
