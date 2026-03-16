# WTF is Flash Attention?

Flash Attention is an optimized implementation of the attention mechanism that is faster and uses less GPU memory. It achieves this by restructuring the computation to minimize reads/writes to slow GPU memory (HBM), doing more work in fast on-chip SRAM instead. Same math, same results, just way more efficient.

```
  Standard Attention              Flash Attention
  ┌────────┐   ┌────────┐       ┌────────┐   ┌────────┐
  │  SRAM  │   │  HBM   │       │  SRAM  │   │  HBM   │
  │ (fast) │   │ (slow) │       │ (fast) │   │ (slow) │
  └────┬───┘   └───┬────┘       └────┬───┘   └───┬────┘
       │ ◄──────── │ many trips      │ ◄──────── │ few trips
       │ ────────► │                 │  (tiled   │
       │ ◄──────── │                 │  compute) │
```

**Examples:** [FlashAttention](https://github.com/Dao-AILab/flash-attention), [xformers](https://github.com/facebookresearch/xformers), [PyTorch SDPA](https://pytorch.org/docs/stable/generated/torch.nn.functional.scaled_dot_product_attention.html)
